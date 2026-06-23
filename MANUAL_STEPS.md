# Manual Steps — Academic Workstation Migration

Code is written and ready to review. These are the human steps to activate it.

---

## Step 0 — Lock and dry-run

```bash
# Pull all new flake inputs (home-manager, hyprland, nixvim)
nix flake lock

# Verify both configs evaluate without errors
nix build .#nixosConfigurations.Kvasir.config.system.build.toplevel --dry-run
nix build .#nixosConfigurations.Akmon.config.system.build.toplevel --dry-run
```

---

## Step 1 — Apply (Kvasir first)

Kvasir (laptop) is lower-risk. Apply there first, then Akmon once confirmed working.

```bash
nh os switch --hostname Kvasir
```

**After switching — first login:**
Your login shell is now **zsh**. Ghostty will open a zsh session.
- `xsh` → starts xonsh if you need the Python shell
- `nvim` → opens with cyberdream theme and all plugins via NixVim

---

## Step 2 — Fix monitor config

In `Home/xin/_hyprland.nix`, the monitor line is currently set to auto-detect.
After logging in to Hyprland, run:

```bash
hyprctl monitors
```

Then edit the monitor entry in `_hyprland.nix` and rebuild:
```conf
# Kvasir (example — use the actual output name from hyprctl)
monitor = eDP-1, 2560x1440@60, 0x0, 1.5

# Akmon (example)
monitor = DP-1, 2560x1440@144, 0x0, 1
```

If you want per-host monitor configs, the cleanest approach is to move the monitor line
into the host-specific inline module block in `akmon.nix`/`kvasir.nix` via
`home-manager.users.xin.wayland.windowManager.hyprland.settings.monitor = [...]`
or simply maintain two `_hyprland-akmon.nix` / `_hyprland-kvasir.nix` variants.

---

## Step 3 — Test Hyprland session

| Keybind | Action |
|---------|--------|
| `$mod+Return` | anyrun launcher |
| `$mod+T` | ghostty terminal |
| `` $mod+` `` | scratchpad terminal |
| `$mod+N` (spacebar key) | jump to persistent nvim workspace |
| `$mod+Q` | hyprlock |
| `$mod+TAB` | hyprexpo overview |
| `$mod+m/i/n/e` | focus left/right/down/up (Colemak) |

---

## Step 4 — Test NixVim

Open nvim and verify:

```
:checkhealth lsp          " should show nixd, pyright, etc. attached
:Telescope find_files     " <leader>ff
:Neogit                   " <leader>gg
<M-1> .. <M-4>            " Harpoon file slots
<leader>ha                " add file to Harpoon
```

VimTeX uses sioyek as the PDF viewer. Obsidian plugin looks for `~/Grimoire/` — create the
vault dir first if needed: `mkdir -p ~/Grimoire`.

---

## Step 5 — Add sops secrets for new services

```bash
sops _secrets.yaml
```

Add the following keys (leave values as placeholders until ready to fill in):

```yaml
google-app-password:  ENC[...]   # Gmail App Password for mbsync + vdirsyncer CalDAV
habitica-user-id:     ENC[...]
habitica-api-token:   ENC[...]
borg-passphrase:      ENC[...]
```

Get a Gmail App Password: Google Account → Security → App passwords → generate one for "Mail".

---

## Step 6 — Email (aerc + mbsync + Thunderbird)

**Initial mail sync:**
```bash
# Create maildir
mkdir -p ~/.local/share/mail/ironshark/Inbox

# Initial sync (pulls all Gmail)
mbsync -a

# Build notmuch search index
notmuch new
```

**Enable the auto-sync timer:**
```bash
systemctl --user enable --now mbsync.timer
```

**aerc** is configured via `~/.config/aerc/aerc.conf` (written by home-manager).
You still need to write `~/.config/aerc/accounts.conf` with your Gmail credentials:

```conf
[ironshark]
source      = maildir://~/.local/share/mail/ironshark
outgoing    = smtp+plain://xin@ironshark.org:APP_PASSWORD@smtp.gmail.com:587
from        = Xin IronShark <xin@ironshark.org>
copy-to     = Sent
```

Replace `APP_PASSWORD` with the app password (or better: use `source-cred-cmd`).

**Thunderbird:**
1. Launch → add Gmail account manually
2. Download **tbkeys** XPI from addons.thunderbird.net and install
3. Configure tbkeys with vim-style keybindings (j/k, o, r, d, a, f, c, g i)

---

## Step 7 — Calendar (khal + vdirsyncer)

After adding `google-app-password` to sops:

```bash
# Initial CalDAV sync
vdirsyncer discover calendar_google
vdirsyncer sync

# Browse calendar in TUI
khal interactive
```

---

## Step 8 — Google Drive (rclone bisync)

```bash
# Interactive OAuth setup
rclone config
# → New remote → name "gdrive" → Google Drive → follow prompts

# Create local directory
mkdir -p ~/GDrive

# Initial resync (downloads all of Drive)
rclone bisync ~/GDrive gdrive: --resync

# Enable the timer (home-manager already installed the unit)
systemctl --user enable --now rclone-bisync.timer
```

---

## Step 9 — Borgbackup

```bash
# Initialize a backup repo (use an external drive or remote path)
borg init --encryption=repokey /mnt/backup/borg

# Test a backup
borg create /mnt/backup/borg::first-backup /home/xin

# Set up a cron/systemd timer manually for now (no NixOS service configured)
```

---

## Step 10 — Habitica Hook

1. Habitica → Settings → API → copy User ID and API Token
2. Add to sops (done in Step 5)
3. Write the hook:

```bash
mkdir -p ~/.local/share/task/hooks
cat > ~/.local/share/task/hooks/on-exit.habitica.py << 'HOOK'
#!/usr/bin/env python3
import json, sys, os, urllib.request

user_id   = os.environ.get("HABITICA_USER_ID", "")
api_token = os.environ.get("HABITICA_API_TOKEN", "")
if not user_id or not api_token:
    sys.exit(0)

for line in sys.stdin:
    try:
        event = json.loads(line)
        if event.get("event") == "task-complete":
            task_id = event["uuid"]
            req = urllib.request.Request(
                f"https://habitica.com/api/v3/tasks/{task_id}/score/up",
                method="POST",
                headers={"x-api-user": user_id, "x-api-key": api_token,
                         "Content-Type": "application/json"},
            )
            urllib.request.urlopen(req, timeout=5)
    except Exception:
        pass
HOOK
chmod +x ~/.local/share/task/hooks/on-exit.habitica.py
```

4. Expose the sops secrets as env vars. Add to the sops module in a host file:
```nix
sops.secrets.habitica-user-id  = {};
sops.secrets.habitica-api-token = {};
```
Then inject them via a systemd user service environment or a shell profile export.

---

## Step 11 — Obsidian Community Plugins

1. Launch Obsidian → open `~/Grimoire/` vault
2. Settings → Community Plugins → Browse → install:
   - Dataview
   - Templater
   - Calendar
   - Tasks
   - Excalidraw
   - Natural Language Dates
   - Kanban
   - Advanced Tables
   - Linter
   - Git
   - Pandoc Reference List

---

## Akmon-specific: after Kvasir is confirmed working

```bash
nh os switch --hostname Akmon
```

Nvidia is already configured in the host file. Verify after switch:
```bash
nvidia-smi
glxinfo | grep "OpenGL renderer"
```

---

## Step 12 — Nyxt 4.0 (fill in URL + hash before first build)

`Modules/Web/browsers.nix` has a `TODO` placeholder for the Nyxt 4.0 AppImage.
Before running `nix flake lock` / `nh os switch`, fill it in:

1. Go to the Nyxt GitHub releases page and copy the `.AppImage` asset URL for 4.0.
2. Get the hash:
   ```bash
   nix-prefetch-url --type sha256 <paste-url-here>
   # Outputs something like: sha256-abc123...
   ```
3. Edit `Modules/Web/browsers.nix` — replace both `TODO` values:
   ```nix
   url  = "<paste URL>";
   hash = "sha256-<paste hash>";
   ```
4. Rebuild as normal. Nyxt will be in your PATH as `nyxt` and in the app launcher.

If Nyxt 4.0 eventually lands in nixpkgs, swap the whole `let nyxt4 = ...` block for `pkgs.nyxt`.

---

## Known Gaps

| Item | What to do |
|------|-----------|
| **sagemath** | Declared in `Tn-math` via `pkgs.sagemath`. If the nixpkgs build is broken at switch time, fall back to distrobox as a stopgap. |
| **tbkeys** | Install `.xpi` from addons.thunderbird.net manually |
| **Habitica hook** | Write Python script (Step 10 above) |
| **aerc accounts.conf** | Write manually (contains credentials, not managed by Nix) |
| **Per-host monitor config** | Update `_hyprland.nix` after `hyprctl monitors` (Step 2) |
| **Obsidian plugins** | Install via GUI (Step 11) |
| **Nyxt 4.0** | Fill in URL + hash in `Modules/Web/browsers.nix` before first build (Step 12) |
| **shake-to-find cursor** | Handled by `hypr-dynamic-cursors` plugin — enabled in `_hyprland.nix` |
| **R LSP in nvim** | `rPackages.languageserver` installed system-wide; if nixvim doesn't auto-pick it up, add a custom LSP cmd pointing to `R --no-save --slave -e languageserver::run()` |
| **Waybar per-host** | Battery/backlight only relevant on Kvasir; tweak `_hyprland.nix` to conditionally show them or just leave unused modules hidden |
