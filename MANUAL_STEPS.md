# Manual Steps — Academic Workstation Migration

This file documents what you need to do manually to activate the academic-station.md refactor.
The code is written; these are the human-in-the-loop steps.

---

## Before You Do Anything: Lock and Check

```bash
# Pull all new flake inputs (home-manager, hyprland, nixvim, impermanence)
nix flake lock

# Verify the flake evaluates without errors (dry run, no install)
nix build .#nixosConfigurations.Kvasir.config.system.build.toplevel --dry-run
nix build .#nixosConfigurations.Akmon.config.system.build.toplevel --dry-run
```

---

## Step 0 — Stage on One Machine First

Do Kvasir (laptop) first. It's lower-risk than Akmon (desktop + Nvidia).
If Kvasir boots correctly, do Akmon.

---

## Phase 1 — Hyprland + NixVim (no fresh install needed)

This phase can be applied to the **current filesystem** — it does NOT require BTRFS.
It replaces ewm+doom-emacs with Hyprland+NixVim on the existing system.

**What to do:**

1. Remove impermanence from the host modules list temporarily (comment out `Tn-persistence`
   and `Home-xin`'s `_persistence.nix`) since `/persist` doesn't exist yet.
   In `Hosts/Kvasir/kvasir.nix`, comment out:
   ```nix
   # self.nixosModules.Tn-persistence
   ```
   In `Home/xin/default.nix`, comment out `_persistence.nix` from imports.

2. Also comment out `Tn-backup` temporarily — btrbk and snapper expect BTRFS.

3. Build and switch:
   ```bash
   nh os switch --hostname Kvasir
   ```

4. Log in via greetd → Hyprland should start.
   - Test: `$mod+Return` → anyrun launcher
   - Test: `$mod+T` → ghostty terminal
   - Test: `$mod+N` → jumps to nvim workspace with nvim already open
   - Test: `nvim` → should open with cyberdream theme, all plugins

5. Set up monitor config in `Home/xin/_hyprland.nix`:
   Run `hyprctl monitors` in a terminal and update the monitor line:
   ```conf
   monitor = eDP-1, 2560x1440@60, 0x0, 1.5   # Kvasir
   ```

6. Enroll fingerprint / re-test hyprlock:
   ```bash
   hyprlock   # should show the lock screen
   ```

---

## Phase 2 — Secrets for New Services

Add these secrets to `_secrets.yaml` before activating mail/calendar/backup:

```bash
sops _secrets.yaml
```

Add:
```yaml
habitica-user-id:      ENC[...]
habitica-api-token:    ENC[...]
google-app-password:   ENC[...]   # Gmail App Password for mbsync + vdirsyncer
borg-passphrase:       ENC[...]
wtfutil-github-token:  ENC[...]   # optional
```

---

## Phase 3 — Email Setup (after secrets added)

```bash
# Initial maildir sync
mbsync -a

# Build notmuch index
notmuch new

# Verify aerc works
aerc
```

Enable the mbsync systemd timer:
```bash
systemctl --user enable --now mbsync.timer
```

---

## Phase 4 — Calendar Sync

After adding `google-app-password` to sops:

```bash
# Edit vdirsyncer config (already written to ~/.config/vdirsyncer/config by HM)
# but you need to do an initial sync:
vdirsyncer discover calendar_google
vdirsyncer sync
```

---

## Phase 5 — Google Drive (rclone bisync)

```bash
# Authenticate (interactive OAuth)
rclone config
# → New remote → Google Drive → name it "gdrive" → follow OAuth prompts

# Create local directory
mkdir -p ~/GDrive

# Initial sync (pulls entire Drive to ~/GDrive)
rclone bisync ~/GDrive gdrive: --resync

# Enable the timer (home-manager already wrote the unit file)
systemctl --user enable --now rclone-bisync.timer
```

---

## Phase 6 — Borgbackup

```bash
# Initialize the repo (use a backup drive or remote)
borg init --encryption=repokey /mnt/backup/borg

# Store the passphrase in sops (already added above)
# Test a backup
borg create /mnt/backup/borg::first-backup /home/xin
```

---

## Phase 7 — Habitica Hook

1. Get your Habitica User ID and API Token from Habitica → Settings → API
2. Add them to `_secrets.yaml` (done in Phase 2)
3. Write the hook script:

```bash
mkdir -p ~/.local/share/task/hooks
cat > ~/.local/share/task/hooks/on-exit.habitica.py << 'EOF'
#!/usr/bin/env python3
import json, sys, os, urllib.request

user_id  = os.environ.get("HABITICA_USER_ID")
api_token = os.environ.get("HABITICA_API_TOKEN")
if not user_id or not api_token:
    sys.exit(0)

for line in sys.stdin:
    try:
        event = json.loads(line)
        if event.get("event") == "task-complete":
            task_id = event.get("uuid")
            req = urllib.request.Request(
                f"https://habitica.com/api/v3/tasks/{task_id}/score/up",
                method="POST",
                headers={
                    "x-api-user": user_id,
                    "x-api-key": api_token,
                    "Content-Type": "application/json",
                }
            )
            urllib.request.urlopen(req, timeout=5)
    except Exception:
        pass
EOF
chmod +x ~/.local/share/task/hooks/on-exit.habitica.py
```

4. Wire the sops secrets as environment variables (add to the sops module config or inject via a systemd user service).

---

## Phase 8 — Thunderbird Manual Setup

After `nh os switch`:

1. Launch Thunderbird
2. Add Gmail account manually (IMAP: imap.gmail.com:993, SMTP: smtp.gmail.com:587)
3. Download and install **tbkeys** XPI from addons.thunderbird.net
4. Configure tbkeys with the key bindings from `academic-station.md`

---

## Phase 9 — Obsidian Plugins

1. Launch Obsidian → open `~/Grimoire/` vault
2. Settings → Community Plugins → install:
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

## Phase 10 — BTRFS + LUKS2 + Impermanence (Fresh Install)

> **Only do this when ready to reinstall.** Back up everything first.

### Pre-install checklist
- [ ] Back up `/home/xin` to external drive
- [ ] Export Grimoire vault (or verify Syncthing has it)
- [ ] Note current UUIDs: `blkid`

### Partition and format
```bash
# Boot NixOS live ISO
# Wipe disk and create partitions
parted /dev/nvme0n1 -- mklabel gpt
parted /dev/nvme0n1 -- mkpart ESP fat32 1MB 512MB
parted /dev/nvme0n1 -- set 1 esp on
parted /dev/nvme0n1 -- mkpart primary 512MB 100%

# LUKS2 encryption
cryptsetup luksFormat --type luks2 /dev/nvme0n1p2
cryptsetup open /dev/nvme0n1p2 cryptroot

# EFI
mkfs.fat -F 32 -n boot /dev/nvme0n1p1

# BTRFS
mkfs.btrfs -L nixos /dev/mapper/cryptroot
mount /dev/mapper/cryptroot /mnt

# Subvolumes
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume snapshot -r /mnt/@ /mnt/@blank        # blank root snapshot
btrfs subvolume snapshot -r /mnt/@home /mnt/@home-blank  # blank home snapshot
btrfs subvolume create /mnt/@persist
btrfs subvolume create /mnt/@nix
btrfs subvolume create /mnt/@snapshots
umount /mnt

# Mount for install
mount -o subvol=@,noatime,compress=zstd:3 /dev/mapper/cryptroot /mnt
mkdir -p /mnt/{home,persist,nix,.snapshots,boot}
mount -o subvol=@home,noatime,compress=zstd:3  /dev/mapper/cryptroot /mnt/home
mount -o subvol=@persist,noatime,compress=zstd:3 /dev/mapper/cryptroot /mnt/persist
mount -o subvol=@nix,noatime,compress=zstd:3,nodatacow /dev/mapper/cryptroot /mnt/nix
mount -o subvol=@snapshots,noatime,compress=zstd:3 /dev/mapper/cryptroot /mnt/.snapshots
mount /dev/nvme0n1p1 /mnt/boot
```

### Update hardware-configuration.nix
Replace `Hosts/Akmon/_hardware-configuration.nix` (or Kvasir) with the BTRFS/LUKS config
from `academic-station.md` Storage section. Fill in the actual UUIDs from `blkid`.

The rollback boot service (`boot.initrd.systemd.services.rollback`) is already in the plan —
add it to the hardware config file.

### Pre-populate /persist before first reboot
```bash
# Run before nixos-install or after but before enabling rollback:
mkdir -p /mnt/persist/etc/ssh
cp /etc/machine-id /mnt/persist/etc/machine-id           2>/dev/null || true
# SSH host keys will be generated by nixos-install; copy them after
mkdir -p /mnt/persist/var/lib/nixos
```

### Install
```bash
nixos-install --flake /path/to/Technonomicon#Kvasir   # or Akmon
```

After nixos-install generates SSH host keys, copy them to persist:
```bash
cp /mnt/etc/ssh/ssh_host_* /mnt/persist/etc/ssh/
cp /mnt/etc/machine-id /mnt/persist/etc/machine-id
cp -a /mnt/var/lib/nixos/. /mnt/persist/var/lib/nixos/
```

### Uncomment Tn-persistence and _persistence.nix
Once on the BTRFS system, re-enable:
- `self.nixosModules.Tn-persistence` in host files
- `./_persistence.nix` in `Home/xin/default.nix`

And re-enable `Tn-backup`.

### First boot verification
```bash
journalctl -b | grep rollback   # should show rollback service ran
ls /                            # should be nearly empty (ephemeral root worked)
ls /persist                     # should have your saved data
```

### Akmon: TPM2 auto-unlock (optional)
```bash
sudo systemd-cryptenroll --tpm2-device=auto --tpm2-pcrs=0+7 /dev/nvme0n1p2
```
Then add to Akmon hardware config:
```nix
boot.initrd.luks.devices."cryptroot".crypttabExtraOpts = [ "tpm2-device=auto" ];
```

---

## Notes on Known Gaps

| Item | Action needed |
|------|--------------|
| **sagemath** | `distrobox create --name sage --image ubuntu:24.04` then `apt install sagemath` |
| **tbkeys** | Install `.xpi` manually from addons.thunderbird.net |
| **Habitica hook** | Write Python script (see Phase 7 above) |
| **shake-to-find cursor** | Not in Hyprland yet; track upstream |
| **rclone OAuth** | Must be done interactively (see Phase 5) |
| **Waybar per-host** | Kvasir needs battery/backlight modules; Akmon does not. Currently both configs are identical — tune waybar settings in `_hyprland.nix` per machine after first boot. |
| **Neovim R LSP** | `rPackages.languageserver` is installed system-wide; add `r.enable = true` to nixvim LSP if nixvim has an R LSP option, otherwise configure manually via `lsp.servers` with a custom cmd. |
