# Technonomicon — Academic Workstation Refactor

> Ground-up redesign plan. Use this as the build guide when re-implementing from a blank slate.
> Cross-reference with `todo.md` for the current-system inventory and `refactor.md` for the
> original stated goals.

---

## Vision & Philosophy

A stable, flexible environment for a college student and researcher working in math, physics, and CS.

**Single level of depth** is the core principle: everything should be reachable from the top
without drilling through nested menus, nested tabs, or nested panes. This manifests as:

- **Hyprland + hyprscrolling** — a paper-scroll layout where windows sit side-by-side in a
  linear column, not stacked in z-order. You scroll left/right rather than alt-tabbing through
  a stack.
- **No browser tabs** — Brave with the "New Tab, New Window" extension (already force-installed).
  Use Hyprland workspaces for multi-page browsing instead of browser tabs.
- **Neovim + Harpoon** — jump directly to 4–5 key files via `<M-1>`…`<M-4>` rather than
  navigating a buffer tree or tabline.
- **Taskwarrior** — flat tagged task list rather than nested project hierarchies.
- **Obsidian** — flat vault with tags and Dataview queries rather than deep folder nesting.

---

## Architecture: What Changes

### Removing

| Old | Replaced by |
|-----|-------------|
| `ewm` (Emacs-native Wayland compositor) | Hyprland |
| `doom-emacs-unstraightened` | NixVim (declarative Neovim) |
| `app-launcher` (Emacs package) | `anyrun` |
| `hjem` + `hjem-impure` | `home-manager` |
| `swaylock` | `hyprlock` |
| `security.pam.services.swaylock` | `security.pam.services.hyprlock` |

### Adding (from `refactor.md`)

- Hyprland + `hyprlandPlugins.hyprscrolling` + `hyprlandPlugins.hyprexpo`
- `hyprlock` + `hypridle` + `hyprpaper` + `waybar`
- Neovim via NixVim (LazyVim-style declarative config)
- Obsidian + `obsidian.nvim`
- Taskwarrior 3 + Timewarrior + `taskwarrior-tui`
- Thunderbird + tbkeys + Google Calendar (CalDAV)
- BTRFS root filesystem with LUKS2 full-disk encryption
- `home-manager` for per-user declarative config
- `wl-kbptr` (keyboard-driven mouse pointer, floating mode)
- Habitica → Taskwarrior hook

### Adding (additional recommendations)

| Package | Why |
|---------|-----|
| `typst` + `tinymist` | Modern LaTeX alternative — compiles in milliseconds, cleaner syntax, first-class math |
| `julia` | Scientific computing; increasingly dominant in numerical math/physics |
| `R` + `rPackages` | Statistics and data science; required for most quant courses |
| `maxima` | Open-source computer algebra system (symbolic math, ODEs, integrals) |
| `octave` | MATLAB-compatible numerics for courses that require MATLAB |
| `gnuplot` | Quick plots from CLI/scripts without a full notebook |
| `quarto` | Reproducible academic documents integrating R, Python, Julia; replaces org-export to Hugo |
| `lean4` | Proof assistant — excellent for CS/math theory and formal verification |
| `gap` | Group theory CAS; useful for abstract algebra coursework |
| `borgbackup` | Encrypted deduplicated offsite backup for research data |
| `btrbk` | BTRFS snapshot scheduling (daily local snapshots) |
| `zellij` | Terminal multiplexer for multi-pane research computation sessions |
| `foliate` | EPUB reader |
| `khal` + `vdirsyncer` | CalDAV calendar sync (Google Calendar in the terminal) |
| `calcurse` | TUI calendar |
| `julia-mono` (font) | Monospace font with Unicode math symbol coverage |
| `cm-unicode` (font) | Computer Modern Unicode — LaTeX-quality math in display contexts |
| **TUI email** | | |
| `aerc` + `notmuch` + `isync` + `msmtp` | Fast keyboard-only email triage from the terminal |
| **Impermanence** | | |
| `nix-community/impermanence` | Ephemeral root — system wipes clean on every boot; only `/persist` survives |
| **Quantified life** | | |
| `dijo` | TUI habit tracker with visual dot-streak grid |
| `porsmo` | TUI Pomodoro timer |
| `wtfutil` | Configurable terminal dashboard (tasks, clock, GitHub, etc.) |
| `activitywatch` | Automatic self-hosted app/window-usage tracker; privacy-respecting |
| `hledger` + `hledger-ui` + `hledger-web` | Modern plain-text accounting (better reports than ledger) |
| `haskellPackages.arbtt` | Rule-based automatic time tracker (X/Wayland window titles → categories) |
| `datasette` | SQLite data browser/API; great for exploring activitywatch or custom tracking DBs |
| **Extra Hyprland tools** | | |
| `hyprpicker` | Wayland color picker (replaces `wl-color-picker`) |
| `satty` | Screenshot annotation tool |
| `wf-recorder` | Lightweight Wayland screen recorder |
| `awww` | Animated wallpaper daemon (`pkgs.awww` — upstream renamed from `swww`) |
| `wlogout` | Styled logout/poweroff/reboot screen |
| `nwg-look` | GTK theme configurator for Wayland |
| `hyprshot` | Hyprland-aware screenshot wrapper |
| **Terminal tools** | | |
| `yazi` | Blazing-fast TUI file manager with image previews |
| `glow` | Render markdown in terminal |
| `presenterm` | Markdown-based terminal presentations |
| `frogmouth` | TUI markdown reader with navigation |

### Keeping (unchanged or near-unchanged)

- **Kanata keyboard layout** — Colemak-DH, home-row mods. Do not touch.
- **sops-nix** secrets management
- **fcitx5** CJK input (Chinese/Japanese/Korean)
- **Plover** + Javelin steno udev rules
- **Pipewire** audio stack
- All dev language toolchains (Haskell, Python, C, Zig, Nix, BQN, Scheme, Racket, NASM, GForth, Verilog/VHDL)
- **Syncthing** (keep syncing `~/Grimoire/` vault)
- **NetworkManager + iwd**
- All shell tools (ripgrep, fd, eza, bat, zoxide, starship, ghostty, etc.)
- **Sioyek** PDF viewer (already perfectly tuned)
- **Zotero** reference manager
- Most terminal/CLI tools

---

## Flake Inputs (new `flake.nix`)

```nix
{
  description = "Technonomicon — Academic Workstation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-26.05";

    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";

    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    sops-nix.url = "github:Mic92/sops-nix";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";

    # Replace hjem/hjem-impure
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Hyprland compositor (official flake for latest version)
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland.inputs.nixpkgs.follows = "nixpkgs";

    # Declarative Neovim (flake-only, not in nixpkgs)
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    # Stenography (unchanged)
    plover-flake.url = "github:openstenoproject/plover-flake";

    # Ephemeral root / impermanence (flake-only, not in nixpkgs)
    impermanence.url = "github:nix-community/impermanence";
  };

  outputs = inputs@{ self, flake-parts, import-tree, ... }:
  flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [ "x86_64-linux" ];
    imports = [
      (import-tree ./Modules)
      (import-tree ./Hosts)
      (import-tree ./Home)      # NEW: home-manager configs auto-imported
    ];
  };
}
```

> **nixpkgs-only packages** (no separate flake input needed):
> `hyprlandPlugins.hyprscrolling`, `hyprlandPlugins.hyprexpo`, `hyprlock`, `hypridle`,
> `hyprpaper`, `awww` (animated wallpaper — note: nixpkgs attr is `awww`, upstream renamed from `swww`),
> `waybar`, `anyrun`, `wl-kbptr`, `hyprpicker`, `satty`, `wf-recorder`, `wlogout`, `nwg-look`, `hyprshot`,
> `taskwarrior3`, `timewarrior`, `typst`, `tinymist`, `julia`, `R`, `maxima`, `quarto`, `thunderbird`,
> `borgbackup`, `btrbk`, `aerc`, `notmuch`, `isync` (binary: `mbsync`), `msmtp`,
> `dijo`, `porsmo`, `wtfutil` (note: `pkgs.wtf` is an unrelated tool — use `pkgs.wtfutil`),
> `activitywatch`, `hledger`, `hledger-ui`, `hledger-web`, `haskellPackages.arbtt`,
> `datasette`, `yazi`, `glow`, `presenterm`, `frogmouth`.

> **Removed inputs**: `doom-emacs-unstraightened`, `ewm`, `app-launcher`, `hjem`, `hjem-impure`
>
> **Added inputs**: `home-manager`, `hyprland`, `nixvim`, `impermanence`

---

## Module Structure

```
Modules/
  Core/
    nix.nix              # Tn-nix — unchanged
    network.nix          # Tn-network — unchanged
    sound.nix            # Tn-sound — unchanged
    utf.nix              # Tn-utf — unchanged
    virtualization.nix   # Tn-virtualization — unchanged
    persistence.nix      # system-level impermanence declarations (NEW)
  Desktop/
    hyprland.nix         # compositor, plugins, PAM, env vars (NEW)
    waybar.nix           # status bar (NEW)
    notifications.nix    # mako — packages only; service moves to home-manager
    lock.nix             # hyprlock + hypridle (NEW)
    wallpaper.nix        # hyprpaper (NEW)
    launcher.nix         # anyrun (NEW)
    display-manager.nix  # greetd + tuigreet — change session to "Hyprland"
  Input/
    kanata.nix           # extracted from desktop.nix — unchanged
    fcitx5.nix           # extracted from utf.nix — unchanged
    peripherals.nix      # opentabletdriver, xpadneo, scanner, bluetooth, uinput
  Development/
    languages.nix        # all compilers + LSPs (extracted from emacs.nix)
  Academic/
    documents.nix        # texlive, typst, tinymist, pandoc, mermaid, drawio, quarto
    math.nix             # julia, R + rPackages, maxima, octave, gnuplot, lean4, gap, Python sci
    references.nix       # sioyek, zotero, pdfannots2json, libation, foliate, zathura
    anki.nix             # anki-bin + Javelin udev rules (moved from learning.nix)
  Productivity/
    tasks.nix            # taskwarrior3, timewarrior, taskwarrior-tui
    mail.nix             # thunderbird + aerc stack (aerc, notmuch, isync, msmtp)
    calendar.nix         # khal, vdirsyncer, calcurse
    finance.nix          # ledger, beancount, fava, gnucash, hledger
    backup.nix           # borgbackup, btrbk, snapper
    quantified.nix       # dijo, porsmo, wtfutil, activitywatch, arbtt, datasette (NEW)
  Web/
    browsers.nix         # Brave — mostly unchanged
    webapps.nix          # PWA desktop entries — update/prune
  Art/
    art.nix              # unchanged
    custom/
      _pureref.nix
      _allusion.nix
Hosts/
  Akmon/akmon.nix
  Kvasir/kvasir.nix
Home/
  xin/
    default.nix          # imports all user submodules
    shell.nix            # xonsh config
    neovim.nix           # nixvim declarative config
    git.nix              # gitconfig + global gitignore
    taskwarrior.nix      # task + timew config
    mail.nix             # thunderbird + aerc home-manager config
    rclone.nix           # Google Drive bisync systemd user timer (NEW)
    hyprland.nix         # user hyprland.conf (keybinds, rules, autostart)
    persistence.nix      # user-level impermanence declarations (NEW)
```

---

## Storage: BTRFS + LUKS2

> **Requires a fresh install on both machines.** Back up `/home/xin` before proceeding.

### Partition layout

```
┌────────────────────────────────────────────────────────────────────────┐
│ /dev/nvme0n1 (or /dev/sda)                                             │
│                                                                        │
│  p1  EFI System Partition   512 MiB   vfat                             │
│  p2  LUKS2 container        rest   ──►  BTRFS pool                     │
│                                          ├── @           → / (ephemeral)│
│                                          ├── @blank      → rollback src │
│                                          ├── @home       → /home (ephem)│
│                                          ├── @home-blank → rollback src │
│                                          ├── @persist    → /persist     │
│                                          ├── @nix        → /nix         │
│                                          └── @snapshots  → /.snapshots  │
└────────────────────────────────────────────────────────────────────────┘
```

> With impermanence enabled, `/` and `/home` are wiped clean on every boot and restored from
> `@blank`/`@home-blank` snapshots. Only paths explicitly listed under `/persist` survive.

**Create blank snapshots immediately after mkfs at install time** (before writing any files):
```bash
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume snapshot -r /mnt/@ /mnt/@blank
btrfs subvolume snapshot -r /mnt/@home /mnt/@home-blank
btrfs subvolume create /mnt/@persist
btrfs subvolume create /mnt/@nix
btrfs subvolume create /mnt/@snapshots
```

### NixOS config (goes in host `hardware-configuration.nix`)

```nix
boot.initrd.luks.devices."cryptroot" = {
  device = "/dev/disk/by-uuid/<LUKS-UUID>";
  preLVM = true;
  allowDiscards = true;   # SSD TRIM
};

# Systemd initrd (required for rollback service approach)
boot.initrd.systemd.enable = true;

fileSystems."/" = {
  device = "/dev/mapper/cryptroot";
  fsType = "btrfs";
  options = [ "subvol=@" "noatime" "compress=zstd:3" "space_cache=v2" ];
};
fileSystems."/home" = {
  device = "/dev/mapper/cryptroot";
  fsType = "btrfs";
  options = [ "subvol=@home" "noatime" "compress=zstd:3" "space_cache=v2" ];
};
fileSystems."/persist" = {
  device = "/dev/mapper/cryptroot";
  fsType = "btrfs";
  options = [ "subvol=@persist" "noatime" "compress=zstd:3" "space_cache=v2" ];
  neededForBoot = true;   # sops needs host key from /persist at early boot
};
fileSystems."/nix" = {
  device = "/dev/mapper/cryptroot";
  fsType = "btrfs";
  options = [ "subvol=@nix" "noatime" "compress=zstd:3" "space_cache=v2" "nodatacow" ];
};
fileSystems."/.snapshots" = {
  device = "/dev/mapper/cryptroot";
  fsType = "btrfs";
  options = [ "subvol=@snapshots" "noatime" "compress=zstd:3" "space_cache=v2" ];
};
fileSystems."/boot" = {
  device = "/dev/disk/by-uuid/<EFI-UUID>";
  fsType = "vfat";
};
```

### Rollback boot service (`boot.initrd.systemd.services`)

> **Critical**: `boot.initrd.postDeviceCommands` is **blocked** when
> `boot.initrd.systemd.enable = true` (NixOS emits an assertion error). Use a systemd
> service inside the initrd instead.

```nix
boot.initrd.systemd.services.rollback = {
  description = "Rollback BTRFS subvolumes to blank snapshots";
  wantedBy    = [ "initrd-fs.target" ];
  before      = [ "initrd-fs.target" ];
  after       = [ "cryptsetup.target" ];
  unitConfig.DefaultDependencies = "no";
  serviceConfig = {
    Type      = "oneshot";
    ExecStart = pkgs.writeShellScript "rollback" ''
      mount -t btrfs -o subvol=/ /dev/mapper/cryptroot /mnt

      # Delete any nested subvolumes inside @, then @ itself
      btrfs subvolume list -o /mnt/@ | awk '{print $NF}' |
        while read sub; do btrfs subvolume delete "/mnt/$sub"; done
      btrfs subvolume delete /mnt/@

      # Restore from the blank snapshot
      btrfs subvolume snapshot /mnt/@blank /mnt/@

      # Repeat for @home
      btrfs subvolume list -o /mnt/@home | awk '{print $NF}' |
        while read sub; do btrfs subvolume delete "/mnt/$sub"; done
      btrfs subvolume delete /mnt/@home
      btrfs subvolume snapshot /mnt/@home-blank /mnt/@home

      umount /mnt
    '';
  };
};
```

### Akmon: TPM2 auto-unlock (optional)

After first boot, enroll the TPM2 chip so the console requires no passphrase:
```bash
sudo systemd-cryptenroll --tpm2-device=auto --tpm2-pcrs=0+7 /dev/nvme0n1p2
```
Add to NixOS config:
```nix
boot.initrd.luks.devices."cryptroot".crypttabExtraOpts = [ "tpm2-device=auto" ];
```

### Kvasir: passphrase only (laptop = higher physical security risk, no TPM auto-unlock)

### Snapper automated snapshots (`Productivity/backup.nix`)

```nix
services.snapper.configs.root = {
  SUBVOLUME = "/";
  ALLOW_USERS = [ "xin" ];
  TIMELINE_CREATE = true;
  TIMELINE_CLEANUP = true;
  TIMELINE_LIMIT_HOURLY = 6;
  TIMELINE_LIMIT_DAILY = 7;
  TIMELINE_LIMIT_WEEKLY = 4;
  TIMELINE_LIMIT_MONTHLY = 3;
};
services.snapper.configs.home = {
  SUBVOLUME = "/home";
  ALLOW_USERS = [ "xin" ];
  TIMELINE_CREATE = true;
  TIMELINE_CLEANUP = true;
  TIMELINE_LIMIT_HOURLY = 6;
  TIMELINE_LIMIT_DAILY = 14;
  TIMELINE_LIMIT_WEEKLY = 8;
  TIMELINE_LIMIT_MONTHLY = 6;
};
```

---

## Desktop: Hyprland

### `Modules/Desktop/hyprland.nix`

```nix
{ inputs, pkgs, ... }: {
  flake.nixosModules.Tn-hyprland = { ... }: {
    imports = [ inputs.hyprland.nixosModules.default ];

    programs.hyprland = {
      enable = true;
      withUWSM = true;   # proper systemd session management
      plugins = [
        pkgs.hyprlandPlugins.hyprscrolling
        pkgs.hyprlandPlugins.hyprexpo
      ];
    };

    security.pam.services.hyprlock = {};   # replaces swaylock PAM entry

    environment.systemPackages = with pkgs; [
      hyprlock hypridle hyprpaper
      waybar
      anyrun
      wl-kbptr
      grim slurp wl-clipboard wtype
    ];

    environment.sessionVariables = {
      NIXOS_OZONE_WL = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      QT_QPA_PLATFORM = "wayland";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      NIXPKGS_ALLOW_UNFREE = "1";
    };
  };
}
```

### `Home/xin/hyprland.nix` — `hyprland.conf` (key sections)

**Monitors**
```conf
# Akmon — update to actual output from `hyprctl monitors`
monitor = DP-1, 2560x1440@144, 0x0, 1

# Kvasir ThinkPad T480s (HiDPI panel)
monitor = eDP-1, 2560x1440@60, 0x0, 1.5
```

**hyprscrolling plugin** (PaperWM-style linear tiling)
```conf
plugin {
  hyprscrolling {
    column_default_width = one
    column_widths = one two maximized
    focus_wrap = false
  }
}
```

**Keybindings** (Colemak-DH directional keys: `m`/`n`/`e`/`i` = ←/↓/↑/→)
```conf
$mod = SUPER

# Workspaces 1–9
bind = $mod, 1, workspace, 1
bind = $mod, 2, workspace, 2
bind = $mod, 3, workspace, 3
bind = $mod, 4, workspace, 4
bind = $mod, 5, workspace, 5
bind = $mod, 6, workspace, 6
bind = $mod, 7, workspace, 7
bind = $mod, 8, workspace, 8
bind = $mod, 9, workspace, 9
bind = $mod SHIFT, 1, movetoworkspace, 1
bind = $mod SHIFT, 2, movetoworkspace, 2
bind = $mod SHIFT, 3, movetoworkspace, 3
bind = $mod SHIFT, 4, movetoworkspace, 4
bind = $mod SHIFT, 5, movetoworkspace, 5
bind = $mod SHIFT, 6, movetoworkspace, 6
bind = $mod SHIFT, 7, movetoworkspace, 7
bind = $mod SHIFT, 8, movetoworkspace, 8
bind = $mod SHIFT, 9, movetoworkspace, 9

# Named workspaces
bind = $mod, code:57, workspace, name:nvim   # $mod+N — persistent Neovim session

# Window management
bind = $mod, D, killactive
bind = $mod, W, togglefloating
bind = $mod, F, fullscreen
bind = $mod SHIFT, F, fullscreen, 1          # maximize (keep waybar)

# Launch
bind = $mod, Return, exec, anyrun
bind = $mod, T, exec, ghostty
bind = $mod, grave, togglespecialworkspace, terminal   # quick scratchpad terminal

# System
bind = $mod, Q, exec, hyprlock
bind = $mod SHIFT, Q, exec, systemctl poweroff

# Screenshot → clipboard (port of EWM s-y)
bind = $mod, Y, exec, slurp | grim -g - - | wl-copy

# Keyboard pointer
bind = $mod, K, exec, wl-kbptr

# Overview
bind = $mod, TAB, hyprexpo:expo, toggle

# Focus navigation (Colemak home row)
bind = $mod, m, movefocus, l
bind = $mod, i, movefocus, r
bind = $mod, n, movefocus, d
bind = $mod, e, movefocus, u

# Move windows
bind = $mod SHIFT, m, movewindow, l
bind = $mod SHIFT, i, movewindow, r
bind = $mod SHIFT, n, movewindow, d
bind = $mod SHIFT, e, movewindow, u

# hyprscrolling column navigation
bind = $mod, bracketleft,  scroller:movefocus, begin
bind = $mod, bracketright, scroller:movefocus, end
bind = $mod, equal,        scroller:cyclewidth, next
bind = $mod, minus,        scroller:cyclewidth, prev

# Resize (hold mod+alt + direction)
binde = $mod ALT, m, resizeactive, -40 0
binde = $mod ALT, i, resizeactive,  40 0
binde = $mod ALT, n, resizeactive, 0  40
binde = $mod ALT, e, resizeactive, 0 -40
```

**Cursor**
```conf
cursor {
  hide_on_key_press = true
  inactive_timeout = 5
  # shake-to-find: not native in Hyprland yet — track upstream
}
```

**Window rules**
```conf
# Quick terminal scratchpad (SUPER+grave)
windowrulev2 = workspace special:terminal silent, class:^(ghostty-scratchpad)$
windowrulev2 = float,                             class:^(ghostty-scratchpad)$
windowrulev2 = size 65% 60%,                      class:^(ghostty-scratchpad)$
windowrulev2 = center,                            class:^(ghostty-scratchpad)$

# Persistent Neovim workspace
windowrulev2 = workspace name:nvim silent, class:^(ghostty-nvim)$

# Float utilities
windowrulev2 = float, class:^(pavucontrol)$
windowrulev2 = float, class:^(blueman-manager)$
windowrulev2 = float, class:^(wl-kbptr)$

# XWayland DPI
xwayland { force_zero_scaling = true; }
```

**Autostart**
```conf
exec-once = mako
exec-once = hypridle
exec-once = hyprpaper
exec-once = waybar
exec-once = ghostty --class=ghostty-scratchpad
exec-once = ghostty --class=ghostty-nvim -e nvim
exec-once = udiskie
exec-once = copyq
exec-once = fcitx5 -d
```

**Input** (Kanata handles remapping; leave `kb_layout = us` vanilla)
```conf
input {
  kb_layout = us
  repeat_delay = 500
  repeat_rate = 30
  touchpad {
    natural_scroll = false
    tap-to-click = true
    disable_while_typing = true
    scroll_method = no_scroll
    middle_button_emulation = false
  }
}
```

### `Modules/Desktop/waybar.nix`

Modules: `hyprland/workspaces` + `hyprland/window` (left) · `clock` (center) ·
`tray`, `wireplumber`, `network`, `cpu`, `memory`, `battery`\*, `backlight`\* (right)
(\* Kvasir only via host-conditional or per-host waybar config)

Style: background `#1D232F`, accent `#00FFFF`, inactive `#8C98A6`, font Iosevka 13

### `Modules/Desktop/lock.nix`

```nix
programs.hyprlock.settings = {
  general.hide_cursor = true;
  background = [{
    monitor = "";
    blur_passes = 3;
    blur_size = 8;
    noise = 0.012;
    contrast = 0.89;
    brightness = 0.72;
  }];
  input-field = [{
    size = "320, 52";
    outline_thickness = 2;
    outer_color = "rgb(00FFFF)";
    inner_color = "rgb(1D232F)";
    font_color = "rgb(CFDFDF)";
    fade_on_empty = true;
    placeholder_text = "";
    dots_center = true;
    check_color = "rgb(00FA9A)";
    fail_color = "rgb(FF5370)";
    position = "0, -120";
    halign = "center";
    valign = "center";
  }];
  label = [
    {
      text = "$TIME";
      font_size = 72;
      font_family = "JetBrains Mono";
      color = "rgba(CFDFDFee)";
      position = "0, 100";
      halign = "center";
      valign = "center";
    }
    {
      text = "cmd[update:60000] date '+%A, %B %d %Y'";
      font_size = 18;
      color = "rgba(8C98A6cc)";
      position = "0, 20";
      halign = "center";
      valign = "center";
    }
  ];
};

services.hypridle.settings = {
  general = {
    lock_cmd = "hyprlock";
    before_sleep_cmd = "hyprlock";
    after_sleep_cmd = "hyprctl dispatch dpms on";
  };
  listener = [
    { timeout = 240; on-timeout = "brightnessctl -s set 20%"; on-resume = "brightnessctl -r"; }
    { timeout = 300; on-timeout = "hyprlock"; }
    { timeout = 600; on-timeout = "systemctl suspend"; }
  ];
};
```

---

## Editor: Neovim via NixVim

### Approach

`programs.nixvim` (home-manager module from the nixvim flake). Every plugin and setting is
declared in Nix — no `lazy.nvim` or manual plugin managers at runtime. Plugin versions are
pinned by nixpkgs/nixvim. This gives the LazyVim *philosophy* with Nix reproducibility.

**Single-depth UI decisions:**
- No bufferline/tabline — use **Harpoon** (`<M-1>`…`<M-4>`) for direct fast-file access
- **Telescope** for discovery (find files, grep, LSP symbols, oldfiles)
- `<Space>` as leader

### `Home/xin/neovim.nix`

```nix
{ inputs, pkgs, ... }: {
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;

    colorschemes.cyberdream = {
      enable = true;
      settings.italic_comments = true;
    };

    opts = {
      number = true;
      relativenumber = true;
      scrolloff = 10;        # typewriter-scroll equivalent
      signcolumn = "yes";
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      undofile = true;
      ignorecase = true;
      smartcase = true;
      splitright = true;
      splitbelow = true;
      updatetime = 250;
    };

    globals.mapleader = " ";

    plugins.lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        pyright.enable = true;
        clangd.enable = true;
        hls.enable = true;         # Haskell
        zls.enable = true;         # Zig
        tinymist.enable = true;    # Typst
        lua-ls.enable = true;
        ruff.enable = true;        # Python linter/formatter
        # R: add rPackages.languageserver as extraPackage
      };
    };

    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
      settings.sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "path"; }
        { name = "obsidian"; }
      ];
    };
    plugins.luasnip.enable = true;
    plugins.friendly-snippets.enable = true;

    plugins.treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };

    plugins.telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = { action = "find_files";            desc = "Find files"; };
        "<leader>fg" = { action = "live_grep";             desc = "Live grep"; };
        "<leader>fb" = { action = "buffers";               desc = "Buffers"; };
        "<leader>fr" = { action = "oldfiles";              desc = "Recent files"; };
        "<leader>fs" = { action = "lsp_document_symbols";  desc = "Document symbols"; };
        "<leader>fS" = { action = "lsp_workspace_symbols"; desc = "Workspace symbols"; };
      };
    };

    # Single-depth file navigation — no bufferline
    plugins.harpoon = {
      enable = true;
      keymaps = {
        addFile = "<leader>ha";
        toggleQuickMenu = "<leader>hh";
        navFile = {
          "1" = "<M-1>";
          "2" = "<M-2>";
          "3" = "<M-3>";
          "4" = "<M-4>";
        };
      };
    };

    plugins.gitsigns.enable = true;
    plugins.neogit.enable = true;
    plugins.lualine.enable = true;
    plugins.flash.enable = true;        # avy-like motion (replaces evil-snipe/avy)
    plugins.which-key.enable = true;
    plugins.comment.enable = true;
    plugins.nvim-autopairs.enable = true;
    plugins.nvim-surround.enable = true;
    plugins.indent-blankline.enable = true;
    plugins.trouble.enable = true;
    plugins.neo-tree = {
      enable = true;
      closeIfLastWindow = true;
    };
    plugins.toggleterm = {
      enable = true;
      settings.direction = "float";
    };
    plugins.undotree.enable = true;
    plugins.noice.enable = true;
    plugins.notify.enable = true;

    plugins.vimtex = {
      enable = true;
      texlivePackage = null;    # use system texlive
      settings = {
        view_method = "sioyek";
        compiler_method = "latexmk";
      };
    };

    plugins.obsidian = {
      enable = true;
      settings = {
        workspaces = [{ name = "Grimoire"; path = "~/Grimoire"; }];
        daily_notes = {
          folder = "Journal";
          date_format = "%Y-%m-%d";
          template = "Templates/Daily.md";
        };
        completion.nvim_cmp = true;
        ui.enable = true;
        follow_url_func.__raw = ''
          function(url) vim.fn.jobstart({"xdg-open", url}) end
        '';
      };
    };

    plugins.molten = {
      enable = true;
      settings = {
        image_provider = "image.nvim";
        auto_open_output = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      image-nvim       # inline image rendering (Jupyter plot output)
      img-clip-nvim    # paste images from clipboard into documents
    ];

    keymaps = [
      # LSP
      { key = "gd";          action.__raw = "vim.lsp.buf.definition";                               mode = "n"; }
      { key = "gr";          action = "<cmd>Telescope lsp_references<cr>";                          mode = "n"; }
      { key = "K";           action.__raw = "vim.lsp.buf.hover";                                    mode = "n"; }
      { key = "<leader>ca";  action.__raw = "vim.lsp.buf.code_action";                              mode = ["n" "v"]; }
      { key = "<leader>rn";  action.__raw = "vim.lsp.buf.rename";                                   mode = "n"; }
      { key = "<leader>f";   action.__raw = "function() vim.lsp.buf.format { async = true } end";   mode = ["n" "v"]; }
      # Diagnostics
      { key = "<leader>xx";  action = "<cmd>Trouble diagnostics toggle<cr>";  mode = "n"; }
      { key = "[d";          action.__raw = "vim.diagnostic.goto_prev";       mode = "n"; }
      { key = "]d";          action.__raw = "vim.diagnostic.goto_next";       mode = "n"; }
      # Git
      { key = "<leader>gg";  action = "<cmd>Neogit<cr>";           mode = "n"; }
      # File tree
      { key = "<leader>e";   action = "<cmd>Neotree toggle<cr>";   mode = "n"; }
      # Terminal
      { key = "<F4>";        action = "<cmd>ToggleTerm<cr>";        mode = ["n" "i" "v"]; }
      # Undo tree
      { key = "<leader>u";   action = "<cmd>UndotreeToggle<cr>";   mode = "n"; }
      # Flash motion
      { key = "s";   action.__raw = "function() require('flash').jump() end";       mode = ["n" "v"]; }
      { key = "S";   action.__raw = "function() require('flash').treesitter() end"; mode = ["n" "v"]; }
      # Obsidian
      { key = "<leader>on";  action = "<cmd>ObsidianNew<cr>";      mode = "n"; }
      { key = "<leader>of";  action = "<cmd>ObsidianSearch<cr>";   mode = "n"; }
      { key = "<leader>od";  action = "<cmd>ObsidianDailies<cr>";  mode = "n"; }
      { key = "<leader>ot";  action = "<cmd>ObsidianToday<cr>";    mode = "n"; }
      { key = "<leader>ol";  action = "<cmd>ObsidianLinks<cr>";    mode = "n"; }
      # LaTeX
      { key = "<leader>lc";  action = "<cmd>VimtexCompile<cr>";  mode = "n"; }
      { key = "<leader>lv";  action = "<cmd>VimtexView<cr>";      mode = "n"; }
      { key = "<leader>le";  action = "<cmd>VimtexErrors<cr>";    mode = "n"; }
      # Tasks
      { key = "<leader>tt";  action = "<cmd>ToggleTerm cmd='taskwarrior-tui'<cr>";  mode = "n"; }
    ];
  };
}
```

### "Nvim everywhere" workflow

A dedicated Hyprland workspace named `nvim` (`$mod + N`). `ghostty --class=ghostty-nvim -e nvim`
launches at startup; its window rule silently routes it to that workspace.

**Select-all-paste workflow:**
1. Select text in any window → `Ctrl+C` / `wl-copy`
2. `$mod + N` — jump to the nvim workspace
3. `"+p` in normal mode — paste clipboard into nvim buffer for editing

**Shell function** (add to `_config.xsh`):
```python
def nv_clip():
    """Dump clipboard into a temp file and open it in nvim."""
    import tempfile
    content = $(wl-paste)
    with tempfile.NamedTemporaryFile(suffix='.txt', delete=False, mode='w') as f:
        f.write(content)
        fname = f.name
    $[nvim @(fname)]
```

---

## Notes: Obsidian

- `pkgs.obsidian` installed system-wide
- Vault path: `~/Grimoire/` (same as current org directory — content coexists)
- Migrate old `.org` notes gradually: `pandoc --from org --to markdown note.org -o note.md`

### Recommended community plugins (install via Obsidian GUI, not Nix)

| Plugin | Purpose |
|--------|---------|
| Dataview | Query notes like a database; replaces org-ql |
| Templater | Advanced templates with JS expressions; replaces org-capture |
| Calendar | Daily notes calendar sidebar |
| Tasks | Task management inline with notes |
| Excalidraw | Embedded whiteboard diagrams |
| Natural Language Dates | Parse "next Tuesday" in tasks |
| Kanban | Kanban boards in notes |
| Advanced Tables | Markdown table editor |
| Linter | Consistent formatting on save |
| Git | Auto-commit vault; replaces `git-auto-commit-mode` |
| Pandoc Reference List | Zotero reference integration |

### Syncthing
Keep `~/Grimoire/` in Syncthing sync. Include `.obsidian/` to share plugin config
between Akmon and Kvasir.

---

## Task Management: Taskwarrior + Timewarrior

### `Modules/Productivity/tasks.nix`

```nix
environment.systemPackages = with pkgs; [
  taskwarrior3
  timewarrior
  taskwarrior-tui
];
```

### `Home/xin/taskwarrior.nix`

```nix
programs.taskwarrior = {
  enable = true;
  dataLocation = "~/.local/share/task";
  config = {
    "context.study"    = "+study or +class";
    "context.research" = "+research";
    "context.admin"    = "+admin";
    urgency.user.tag.deadline.coefficient = 12.0;
    urgency.user.tag.today.coefficient    = 10.0;
    color = "on";
    "report.next.columns" = "id,start.age,priority,project,tags,due.relative,description,urgency";
    "report.next.sort"    = "urgency-";
  };
};
```

### Aliases (add to xonsh config)
```python
aliases['t']  = 'task'
aliases['tw'] = 'timew'
aliases['tl'] = 'task list'
```

### Habitica Integration

Habitica is a gamified habit/task tracker. Integration via a taskwarrior `on-exit` hook:

1. Add to sops secrets: `habitica-user-id`, `habitica-api-token`
2. Write `~/.local/share/task/hooks/on-exit.habitica.py`:
   - Reads credentials from environment (injected via sops `environment.etc`)
   - On task completion event, calls `POST https://habitica.com/api/v3/tasks/user/:id/score/up`
3. `taskwarrior-habitrpg` exists on GitHub but is not in nixpkgs — write a minimal Python
   hook script rather than a custom derivation

---

## Email: Thunderbird + aerc + tbkeys + Google Calendar

Two email clients complement each other: **aerc** for fast keyboard-only triage in the
terminal (reading, replying, archiving), **Thunderbird** for calendar, complex HTML mail,
and attachment management. Both read from the same local maildir synced by `mbsync`.

### `Modules/Productivity/mail.nix`

```nix
environment.systemPackages = with pkgs; [
  thunderbird
  aerc        # TUI email client
  notmuch     # email indexer (fast full-text search)
  isync       # IMAP sync daemon (binary: mbsync)
  msmtp       # SMTP relay for sending
];
```

### `Home/xin/mail.nix`

```nix
programs.thunderbird = {
  enable = true;
  profiles.xin = {
    isDefault = true;
    settings = {
      "mail.spellcheck.inline"       = false;
      "mailnews.default_sort_type"   = 18;  # sort by date
      "mailnews.default_sort_order"  = 2;   # descending
    };
  };
};
```

### tbkeys

Vim-style keybindings for Thunderbird. Not in nixpkgs — options:
- Install the `.xpi` manually from `addons.thunderbird.net`
- Write a small Nix derivation that fetches the XPI by hash

Key bindings to configure: `j`/`k` navigate messages, `o` open, `r` reply, `d` delete,
`a` archive, `f` forward, `c` compose, `g i` go to inbox.

### Google Calendar via CalDAV

```nix
# Modules/Productivity/calendar.nix
environment.systemPackages = with pkgs; [ khal vdirsyncer calcurse ];
```

`~/.config/vdirsyncer/config`:
```ini
[general]
status_path = "~/.local/share/vdirsyncer/status/"

[pair calendar_google]
a = "google_remote"
b = "local_calendar"
collections = ["from a", "from b"]
metadata = ["color", "displayname"]

[storage google_remote]
type = "caldav"
url = "https://apidata.google.com/caldav/v2/"
username = "xin@ironshark.org"
password.fetch = ["command", "sops", "-d", "--extract", "[\"google-app-password\"]", "_secrets.yaml"]

[storage local_calendar]
type = "filesystem"
path = "~/.local/share/calendars"
fileext = ".ics"
```

Add `google-app-password` to `_secrets.yaml`.

---

## Academic Toolkit

### `Modules/Academic/documents.nix`

```nix
environment.systemPackages = with pkgs; [
  texlive.combined.scheme-full   # full LaTeX
  typst                          # modern document language
  tinymist                       # Typst LSP + formatter
  pandoc
  quarto                         # reproducible notebooks (R/Python/Julia)
  mermaid-cli
  drawio
  pdf2svg
  poppler
  pdfannots2json
  hunspell
  hunspellDicts.en_US
];
```

### `Modules/Academic/math.nix`

```nix
environment.systemPackages = with pkgs; [
  julia                          # numerical computing
  R
  rPackages.languageserver       # R LSP for Neovim
  rPackages.tidyverse
  rPackages.rmarkdown
  rPackages.knitr
  maxima                         # open-source CAS
  octave                         # MATLAB-compatible
  gnuplot
  lean4                          # theorem prover
  gap                            # group theory CAS

  # Python scientific stack (bundled to avoid version conflicts)
  (python3.withPackages (ps: with ps; [
    numpy scipy matplotlib sympy
    pandas jupyter jupyterlab
    scikit-learn ipython
  ]))

  zeromq                         # Jupyter kernel communication
];
```

> **sagemath**: not in nixpkgs. Use via `distrobox` (Ubuntu container: `apt install sagemath`).

### `Modules/Academic/references.nix`

```nix
environment.systemPackages = with pkgs; [
  zotero
  foliate          # EPUB reader
  zathura          # lightweight fallback PDF viewer
  libation         # Audible audiobook downloader
  # sioyek is in Modules/Knowledge/pdf.nix (unchanged)
];
```

### `Modules/Academic/anki.nix` (from `learning.nix`)

```nix
environment.systemPackages = [ pkgs.anki-bin ];

services.udev.extraRules = ''
  SUBSYSTEM=="usb", ATTRS{idVendor}=="2e8a", ATTRS{idProduct}=="0003", TAG+="uaccess"
  SUBSYSTEM=="hidraw", ATTRS{idVendor}=="2e8a", TAG+="uaccess"
'';
```

---

## Productivity

### `Modules/Productivity/backup.nix`

```nix
environment.systemPackages = with pkgs; [ borgbackup btrbk ];

services.btrbk.instances.btrbk = {
  onCalendar = "daily";
  settings = {
    snapshot_preserve_min = "2d";
    snapshot_preserve     = "7d 4w 3m";
    volume."/" = {
      subvolume."@home" = {};
    };
  };
};
```

Borgbackup: initialize a repo manually with `borg init --encryption=repokey <path>`.
Store the passphrase in sops as `borg-passphrase`.

### rclone Google Drive bisync timer (`Home/xin/rclone.nix`)

Mount is too slow for interactive use — use explicit bisync instead. A systemd user
timer runs bisync in the background on a schedule; you work entirely on the local copy.

**One-time setup:**
```bash
rclone config   # authenticate Google Drive, name the remote "gdrive"
mkdir -p ~/GDrive
rclone bisync ~/GDrive gdrive: --resync   # initial sync (pulls remote state)
```

**`Home/xin/rclone.nix`** (home-manager):
```nix
{ pkgs, ... }: {
  systemd.user.services.rclone-bisync = {
    Unit = {
      Description = "Bisync local ~/GDrive with Google Drive";
      After = [ "network-online.target" ];
      Wants = [ "network-online.target" ];
    };
    Service = {
      Type = "oneshot";
      ExecStart = "${pkgs.rclone}/bin/rclone bisync %h/GDrive gdrive: --transfers 8 --drive-chunk-size 128M";
      # Log conflicts to journal: journalctl --user -u rclone-bisync
    };
  };

  systemd.user.timers.rclone-bisync = {
    Unit.Description = "Run rclone bisync every 30 minutes";
    Timer = {
      OnBootSec = "5min";
      OnUnitActiveSec = "30min";
      Persistent = true;   # catch up on missed syncs after suspend/resume
    };
    Install.WantedBy = [ "timers.target" ];
  };
}
```

Add `~/GDrive` to persistence list and `~/.config/rclone` (stores OAuth tokens):

```nix
# in Home/xin/persistence.nix
home.persistence."/persist/home/xin".directories = [
  # ... existing entries ...
  "GDrive"
  ".config/rclone"
];
```

> `Persistent = true` means if the machine was suspended or off during a scheduled
> sync, the timer fires immediately on next boot/wake rather than waiting the full interval.

---

## Browser: Brave (minimal changes)

Keep all existing policy setup and force-installed extensions. The "New Tab, New Window"
extension (`dndlcbaomdoggooaficldplkcmkfpgff`) is already force-installed and enforces the
no-tabs philosophy — each Brave window holds one page; Hyprland workspaces handle the rest.

Consider: swap Surfingkeys for **Vimium C** (more actively maintained, same keybinding
philosophy). Update the force-installed extension ID accordingly.

---

## Shell: Xonsh (updates only)

Update editor variables:
```python
$EDITOR = "nvim"
$VISUAL = "nvim"
$SUDO_EDITOR = "nvim"
```

New aliases:
```python
aliases['vim'] = 'nvim'
aliases['vi']  = 'nvim'
aliases['t']   = 'task'
aliases['tw']  = 'timew'
aliases['tl']  = 'task list'
```

New packages:
```nix
pkgs.zellij     # terminal multiplexer for long computation sessions
```

New shell function: `nv_clip` (see "nvim everywhere" section above).

---

## Home Manager Wiring

### In each host file (`Hosts/Akmon/akmon.nix`, `Hosts/Kvasir/kvasir.nix`)

```nix
imports = [
  inputs.home-manager.nixosModules.home-manager
];

home-manager = {
  useGlobalPkgs     = true;
  useUserPackages   = true;
  extraSpecialArgs  = { inherit inputs; };
  users.xin         = import ../../Home/xin;
};
```

### What moves to home-manager

- Shell config (xonsh, starship, direnv)
- Git config
- Neovim config (nixvim module)
- Taskwarrior config
- Thunderbird profile
- mako systemd user service
- hyprland.conf (keybinds, rules, autostart)

### What stays system-level

- All NixOS services and hardware options
- System packages (compilers, LSPs, dev tools)
- udev rules
- sops secrets
- greetd / display manager

---

## Kanata: Unchanged

The Colemak-DH layout with home-row mods is the ergonomic core of this setup. Do not modify.

After reinstall: re-confirm device paths on Akmon. The Kinesis Advantage2 paths are stable
(they encode the device serial number), but verify with `ls /dev/input/by-id/`.

---

## Fonts (additions)

Keep all existing fonts. Add:

```nix
pkgs.julia-mono    # monospace with comprehensive Unicode math; great for sci code
pkgs.cm-unicode    # Computer Modern Unicode — TeX-quality math in non-TeX contexts
```

---

## Secrets (new additions)

Add to `_secrets.yaml`:

```yaml
habitica-user-id:    ENC[AES256_GCM,...]
habitica-api-token:  ENC[AES256_GCM,...]
google-app-password: ENC[AES256_GCM,...]   # for vdirsyncer CalDAV + mbsync IMAP
borg-passphrase:     ENC[AES256_GCM,...]   # borgbackup encryption key
wtfutil-github-token: ENC[AES256_GCM,...] # for wtfutil GitHub module (optional)
```

> **Impermanence note**: The SSH host key at `/etc/ssh/ssh_host_ed25519_key` is the sops
> decryption key. It **must** be listed in `environment.persistence."/persist".files` or
> sops will fail to decrypt secrets on the second boot (the key would be wiped with `/`).

---

## TUI Email: aerc + notmuch + mbsync + msmtp

aerc is a vim-style modal TUI email client. It pairs with `notmuch` for instant full-text
search across all mail and `mbsync` (from `isync`) for IMAP sync. Use aerc for fast
keyboard-only triage; Thunderbird for calendar, complex HTML, and attachments.

### `Home/xin/mail.nix` — aerc config files (via `home.file`)

**`~/.config/aerc/aerc.conf`**:
```ini
[ui]
timestamp-format = 2006-01-02 15:04
this-day-time-format = 15:04
this-year-time-format = Jan 02
sidebar-width = 28
preview-height = 12

[viewer]
pager = less -R
alternatives = text/plain,text/html
header-layout = From,To|Cc,Date,Subject

[compose]
editor = nvim
header-layout = To,From,Cc,Subject

[filters]
text/html = w3m -T text/html -dump -o display_image=false -o display_link_number=true
text/plain = cat
```

**`~/.config/aerc/binds.conf`** (vim-consistent):
```ini
[messages]
q = :quit<Enter>
j = :next-message<Enter>
k = :prev-message<Enter>
g = :select-message 0<Enter>
G = :select-message -1<Enter>
<Enter> = :open-message<Enter>
d = :prompt 'Delete (y/n)?' 'delete-message'<Enter>
D = :delete-message<Enter>
a = :archive flat<Enter>
r = :reply -q<Enter>
R = :reply -aq<Enter>
c = :compose<Enter>
/ = :search<space>
n = :next-result<Enter>
N = :prev-result<Enter>

[view]
q = :close<Enter>
j = :next-part<Enter>
k = :prev-part<Enter>
J = :next-message<Enter>
K = :prev-message<Enter>
f = :forward<Enter>
r = :reply -q<Enter>
R = :reply -aq<Enter>
d = :delete-message<Enter>
a = :archive flat<Enter>
```

**`~/.mbsyncrc`**:
```ini
IMAPAccount ironshark
Host imap.gmail.com
Port 993
User xin@ironshark.org
PassCmd "sops -d --extract '[\"google-app-password\"]' /path/to/_secrets.yaml"
SSLType IMAPS
CertificateFile /etc/ssl/certs/ca-certificates.crt

IMAPStore ironshark-remote
Account ironshark

MaildirStore ironshark-local
SubFolders Verbatim
Path ~/.local/share/mail/ironshark/
Inbox ~/.local/share/mail/ironshark/Inbox

Channel ironshark
Far :ironshark-remote:
Near :ironshark-local:
Patterns * ![Gmail]* "[Gmail]/Sent Mail" "[Gmail]/Starred" "[Gmail]/All Mail"
Create Both
Expunge Both
SyncState *
```

**`~/.config/notmuch/config`**:
```ini
[database]
mail_root=~/.local/share/mail
path=~/.local/share/mail/.notmuch

[user]
name=Xin IronShark
primary_email=xin@ironshark.org

[new]
tags=unread;inbox;

[search]
exclude_tags=deleted;spam;

[maildir]
synchronize_flags=true
```

### Sync systemd user timer (home-manager)

```nix
systemd.user.services.mbsync = {
  Unit.Description = "Sync mail via mbsync";
  Service = {
    ExecStart    = "${pkgs.isync}/bin/mbsync -a";
    ExecStartPost = "${pkgs.notmuch}/bin/notmuch new";
  };
};
systemd.user.timers.mbsync = {
  Unit.Description = "Sync mail every 5 minutes";
  Timer = {
    OnBootSec       = "2min";
    OnUnitActiveSec = "5min";
  };
  Install.WantedBy = [ "timers.target" ];
};
```

> Add `~/.local/share/mail` and `~/.config/aerc` and `~/.config/notmuch` to
> `home.persistence."/persist/home/xin".directories`.

---

## Impermanence (Vimjoyer Style)

Ephemeral root: `/` and `/home` are wiped on every boot by rolling back to blank BTRFS
snapshots. Only paths explicitly declared under `/persist` survive. This eliminates state
drift and makes the system fully reproducible.

> The BTRFS layout and rollback boot service are documented in the Storage section above.
> This section covers the NixOS/home-manager persistence module declarations.

### `Modules/Core/persistence.nix`

```nix
{ inputs, ... }: {
  imports = [ inputs.impermanence.nixosModules.impermanence ];

  flake.nixosModules.Tn-persistence = {
    environment.persistence."/persist" = {
      hideMounts = true;
      directories = [
        "/etc/NetworkManager/system-connections"
        "/var/lib/bluetooth"
        "/var/lib/nixos"           # UID/GID mappings — required
        "/var/lib/systemd/coredump"
        "/var/log"
        "/var/lib/docker"
        "/var/lib/libvirt"
        { directory = "/var/lib/colord"; user = "colord"; group = "colord"; mode = "u=rwx,g=rx,o="; }
      ];
      files = [
        "/etc/machine-id"
        "/etc/ssh/ssh_host_ed25519_key"      # sops decryption key — CRITICAL
        "/etc/ssh/ssh_host_ed25519_key.pub"
        "/etc/ssh/ssh_host_rsa_key"
        "/etc/ssh/ssh_host_rsa_key.pub"
      ];
    };
  };
}
```

### `Home/xin/persistence.nix`

```nix
{ inputs, ... }: {
  imports = [ inputs.impermanence.homeManagerModules.impermanence ];

  home.persistence."/persist/home/xin" = {
    allowOther = true;   # required for bind-mount into user home
    directories = [
      "Projects"
      "Grimoire"
      "Downloads"
      "Archive"
      "Media"
      ".ssh"
      ".gnupg"
      ".config/BraveSoftware"    # Brave profile, bookmarks, extensions state
      ".config/syncthing"
      ".config/obsidian"
      ".config/hypr"
      ".config/aerc"
      ".config/notmuch"
      ".local/share/nvim"        # nvim undo history, sessions, shada file
      ".local/share/task"        # taskwarrior data
      ".local/share/timew"       # timewarrior data
      ".local/share/zoxide"      # jump database
      ".local/share/mail"        # mbsync maildir
      ".local/share/vdirsyncer"  # CalDAV sync state
      ".local/share/calendars"   # khal local calendar store
      ".local/share/dijo"        # dijo habit data
      ".arbtt"                   # arbtt capture log
      ".zotero"
      ".config/zotero"
      ".xonsh"                   # xonsh history
      ".local/share/copyq"
    ];
    files = [
      ".config/mimeapps.list"
    ];
  };
}
```

### After first install — pre-populate `/persist`

Before rebooting into the impermanent system, copy initial state into `/persist`:
```bash
# On first boot (before enabling rollback service), run:
mkdir -p /persist/etc/ssh
cp /etc/machine-id /persist/etc/machine-id
cp /etc/ssh/ssh_host_* /persist/etc/ssh/
mkdir -p /persist/var/lib/nixos
cp -a /var/lib/nixos/. /persist/var/lib/nixos/
```

---

## Quantified Life

Self-tracking toolkit for habits, time, focus, automatic activity logging, and finance.

### `Modules/Productivity/quantified.nix`

```nix
environment.systemPackages = with pkgs; [
  dijo                        # TUI habit tracker — visual dot-streak grid (Rust)
  porsmo                      # TUI Pomodoro timer (Rust, minimal)
  wtfutil                     # configurable terminal personal dashboard
                              # NOTE: attr is wtfutil, NOT wtf (pkgs.wtf is a kernel fuzzer)
  activitywatch               # self-hosted automatic app/window usage tracker
                              # bundles: aw-server-rust, aw-qt, aw-watcher-afk, aw-watcher-window
  hledger                     # modern plain-text accounting CLI
  hledger-ui                  # TUI frontend for hledger
  hledger-web                 # web dashboard for hledger (localhost:5000)
  haskellPackages.arbtt       # automatic rule-based time tracker (window title → category)
  datasette                   # SQLite browser/API — explore activitywatch DB and personal data
  visidata                    # tabular data TUI (already in Academic — cross-reference)
];

services.arbtt = {
  enable  = true;
  # Captures active window title every 60s to ~/.arbtt/capture.log
  # Query: arbtt-stats --filter='day == today' --report=category
};
```

### dijo — TUI habit tracker

```bash
dijo                         # open TUI (dot-streak visualization)
dijo add "Exercise"    y     # yes/no habit
dijo add "Study"       n 3   # numeric habit, daily goal = 3 hours
dijo tick "Exercise"         # mark today done
dijo log  "Study" 2.5        # log 2.5 hours
```

Data at `~/.local/share/dijo/` — included in persistence list.

### activitywatch — automatic usage tracking

Start services (add to Hyprland `exec-once`):
```conf
exec-once = aw-server
exec-once = aw-watcher-window
exec-once = aw-watcher-afk
```
Web dashboard: `http://localhost:5600`

Explore the raw SQLite DB with datasette:
```bash
datasette ~/.local/share/activitywatch/aw-server/peewee-sqlite.v2.db
```

### arbtt — rule-based time categorization

Example `~/.arbtt/categorize.cfg`:
```
tag Program:Nvim    if current window $program =~ /nvim/,
tag Program:Brave   if current window $program =~ /brave/,
tag Category:Research if current window $title =~ /Grimoire/ or
                       current window $title =~ /Zotero/,
tag Category:Study    if current window $title =~ /Khan/ or
                       current window $title =~ /Exercism/,
tag Category:Social   if current window $program =~ /discord/
```

Query: `arbtt-stats --filter='day == today' --report=category`

Add `~/.arbtt/` to persistence list.

### hledger — modern plain-text accounting

hledger reads standard `.journal` files (compatible superset of ledger format).
```bash
hledger                      # CLI
hledger-ui                   # TUI (arrow-key navigation)
hledger-web                  # start web dashboard
hledger bal                  # balance sheet
hledger reg checking         # register for checking account
hledger stats                # journal statistics
```

Migration: `beancount2ledger` can convert from beancount format.
Keep `beancount`/`fava` in `finance.nix` during migration.

### wtfutil — personal dashboard

`~/.config/wtf/config.yml` (configure modules for your workflow):
```yaml
wtf:
  refreshInterval: 1
  grid:
    columns: [45, 45, 45]
    rows: [13, 13, 4]
  mods:
    clock:
      enabled: true
      type: clock
      position: { top: 0, left: 0, height: 1, width: 1 }
    taskwarrior:
      enabled: true
      type: taskwarrior
      position: { top: 0, left: 1, height: 1, width: 1 }
      refreshInterval: 60
    github:
      enabled: true
      type: github
      position: { top: 1, left: 0, height: 1, width: 1 }
      refreshInterval: 300
      apiKey: "${GITHUB_TOKEN}"   # load from sops env
    habitica:
      enabled: false   # enable once API token in sops
```

---

## Additional Hyprland Ecosystem Tools

Add to `Modules/Desktop/hyprland.nix` packages:

```nix
environment.systemPackages = with pkgs; [
  # ... existing packages ...
  hyprpicker   # color picker (replaces wl-color-picker in art.nix)
  satty        # screenshot annotation before sharing
  wf-recorder  # lightweight Wayland screen recorder (no OBS needed for quick clips)
  awww         # animated wallpaper daemon (pkgs.awww — upstream renamed from swww)
  wlogout      # styled logout/poweroff/reboot/lock screen
  nwg-look     # GTK theme picker for Wayland (avoids dconf hacks)
  hyprshot     # Hyprland-aware screenshot wrapper (simplifies grim/slurp invocation)
];
```

Add to `hyprland.conf` keybinds:
```conf
bind = $mod SHIFT, Y, exec, hyprshot -m region     # annotatable screenshot
bind = $mod CTRL,  Y, exec, wf-recorder            # screen recording toggle
bind = $mod,       P, exec, hyprpicker             # color picker
bind = $mod SHIFT, Q, exec, wlogout                # styled logout screen
```

> `awww` plays animated/video wallpapers. If static wallpapers suffice, keep `hyprpaper`
> (already in the plan). Both can coexist; switch `exec-once` in hyprland.conf.

---

## Additional Terminal Tools

Add to `Modules/Core/shell.nix`:

```nix
environment.systemPackages = with pkgs; [
  yazi          # blazing-fast TUI file manager; image previews, integrates with zoxide + fzf
  glow          # render markdown in terminal (quick README / note reading)
  presenterm    # markdown terminal presentations (academic talks, demos from the terminal)
  frogmouth     # TUI markdown reader with document navigation
];
```

**`yazi` shell integration** (add to `_config.xsh`):
```python
def y():
    """Launch yazi and cd to its last directory on exit."""
    import tempfile, subprocess
    tmp = $(mktemp).strip()
    subprocess.run(["yazi", "--cwd-file", tmp])
    if os.path.exists(tmp):
        cwd = open(tmp).read().strip()
        if cwd and cwd != os.getcwd():
            os.chdir(cwd)
aliases['y'] = y
```

Add `yazi` config dir to persistence: `.config/yazi`.

---

## Implementation Order

### Phase 0 — Backup & Prepare
- [ ] Back up `/home/xin` to external drive
- [ ] Export current org/Grimoire notes
- [ ] Record current UUIDs: `blkid`
- [ ] Verify flake compiles from current state: `nix build .#nixosConfigurations.Akmon.config.system.build.toplevel`

### Phase 1 — Flake infrastructure
- [ ] Update `flake.nix`: add `home-manager`, `nixvim`, `hyprland`, `impermanence`; remove `ewm`, `doom-emacs-unstraightened`, `app-launcher`, `hjem`, `hjem-impure`
- [ ] Create new module directory tree (stub files returning `{}`)
- [ ] Migrate unchanged modules: `Tn-nix`, `Tn-network`, `Tn-sound`, `Tn-utf`, `Tn-virtualization`
- [ ] Wire `home-manager` into both host files

### Phase 2 — Storage (fresh install, one machine at a time)
- [ ] Boot NixOS live ISO
- [ ] Partition: 512 MiB EFI + LUKS2 container
- [ ] `mkfs.btrfs /dev/mapper/cryptroot`
- [ ] Create subvolumes: `@`, `@home`, `@persist`, `@nix`, `@snapshots`
- [ ] **Immediately** snapshot blank root and home: `btrfs subvolume snapshot -r /mnt/@ /mnt/@blank` and same for `@home`
- [ ] Write new `hardware-configuration.nix` with BTRFS + LUKS entries (including `/persist neededForBoot = true`)
- [ ] Enable `boot.initrd.systemd.enable = true`
- [ ] Add rollback systemd service to initrd
- [ ] Implement `Modules/Core/persistence.nix` (system-level persistence declarations)
- [ ] Implement `Home/xin/persistence.nix` (user-level persistence declarations)
- [ ] Pre-populate `/persist` with initial state before first reboot: copy `/etc/machine-id`, SSH host keys into `/persist`
- [ ] `nixos-install --flake .#Akmon`
- [ ] First boot; verify rollback fires (check journal: `journalctl -b | grep rollback`)
- [ ] Enroll TPM2 on Akmon if desired
- [ ] Configure snapper on `@persist` (not `@` — snapshotting ephemeral root is pointless)

### Phase 3 — Desktop (Hyprland)
- [ ] `Modules/Desktop/hyprland.nix` — `programs.hyprland` + plugins + PAM
- [ ] `Modules/Desktop/waybar.nix`
- [ ] `Modules/Desktop/lock.nix` — hyprlock + hypridle
- [ ] `Modules/Desktop/wallpaper.nix` — hyprpaper + choose wallpaper
- [ ] `Modules/Desktop/launcher.nix` — anyrun
- [ ] Update `display-manager.nix`: greetd session → `Hyprland` (via UWSM)
- [ ] `Home/xin/hyprland.nix` — keybinds, rules, autostart
- [ ] **Test**: boot into Hyprland; workspaces 1–9; ghostty launches; hyprlock locks

### Phase 4 — Editor (Neovim)
- [ ] `Home/xin/neovim.nix` — core plugins + LSPs
- [ ] Academic plugins: vimtex, obsidian.nvim, molten, image.nvim
- [ ] **Test**: `nvim` opens; LSP attaches to `.nix` and `.py`; Telescope works; Harpoon works

### Phase 5 — Home Manager + Shell
- [ ] `Home/xin/default.nix` importing all submodules
- [ ] `Home/xin/shell.nix` — migrate xonsh, update editor vars, new aliases
- [ ] `Home/xin/git.nix` — migrate gitconfig
- [ ] `Home/xin/taskwarrior.nix`
- [ ] **Test**: `task`, `timew`, starship, zoxide, fzf-widgets all work

### Phase 6 — Academic Toolkit
- [ ] `Academic/documents.nix` — texlive + typst + pandoc + quarto
- [ ] `Academic/math.nix` — julia + R + maxima + octave + gnuplot + lean4 + gap + Python sci
- [ ] `Academic/references.nix` — zotero + foliate
- [ ] **Test**: `typst compile test.typ`; `julia` REPL; `R` starts; `quarto render test.qmd`

### Phase 7 — Obsidian
- [ ] Install `pkgs.obsidian`; open vault at `~/Grimoire/`
- [ ] Install community plugins via Obsidian GUI
- [ ] **Test**: `:ObsidianToday` creates daily note; `:ObsidianSearch` works

### Phase 8 — Email + Calendar
- [ ] `Productivity/mail.nix` + `Home/xin/mail.nix`
- [ ] Configure Thunderbird with Gmail IMAP
- [ ] Install tbkeys
- [ ] Set up vdirsyncer + khal; add `google-app-password` to sops
- [ ] Configure `~/.mbsyncrc` with Gmail IMAP credentials via sops PassCmd
- [ ] Run `mbsync -a` for initial mail sync
- [ ] Run `notmuch new` to build initial index
- [ ] Write `~/.config/aerc/aerc.conf` and `~/.config/aerc/accounts.conf` (accounts file contains credentials)
- [ ] Enable mbsync systemd user timer
- [ ] **Test**: `aerc` opens inbox; `notmuch search tag:inbox` returns results; calendar shows in `khal`

### Phase 9 — Task / Habitica
- [ ] Taskwarrior fully configured and tested
- [ ] Write Habitica hook script; add secrets to sops
- [ ] **Test**: `task done <id>` fires hook and scores Habitica habit

### Phase 10 — Backup
- [ ] Initialize borgbackup repo; add passphrase to sops
- [ ] Configure btrbk systemd timer
- [ ] **Test**: `snapper -c root list` shows timeline; `borg list <repo>` works

### Phase 11 — Google Drive
- [ ] Run `rclone config` and authenticate Google Drive remote (named `gdrive`)
- [ ] `mkdir -p ~/GDrive`
- [ ] Run initial sync: `rclone bisync ~/GDrive gdrive: --resync`
- [ ] Implement `Home/xin/rclone.nix` and rebuild
- [ ] Enable timer: `systemctl --user enable --now rclone-bisync.timer`
- [ ] **Test**: `systemctl --user status rclone-bisync.timer` shows next trigger; modify a file in `~/GDrive`, wait for timer, verify it appears on Drive

---

## Full Package Checklist

### Core / Nix
- [ ] `nix-your-shell`, `nix-index`, `comma` (`,`), `nh`
- [ ] `nixfmt`, `nixd`

### Desktop
- [ ] `hyprland` + `hyprlandPlugins.hyprscrolling` + `hyprlandPlugins.hyprexpo`
- [ ] `hyprlock`, `hypridle`, `hyprpaper`
- [ ] `waybar`
- [ ] `anyrun`
- [ ] `mako`
- [ ] `ghostty`
- [ ] `wl-clipboard`, `wl-kbptr`, `grim`, `slurp`, `wtype`
- [ ] `copyq`, `udiskie`
- [ ] `fcitx5` + addons (gtk, chinese-addons, hangul, mozc-ut, configtool, nord)
- [ ] `kanata-with-cmd`
- [ ] `greetd` + `tuigreet`
- [ ] `hyprpicker` (color picker)
- [ ] `satty` (screenshot annotation)
- [ ] `wf-recorder` (screen recorder)
- [ ] `awww` (animated wallpaper — **note**: nixpkgs attr is `awww`, not `swww`)
- [ ] `wlogout` (styled logout screen)
- [ ] `nwg-look` (GTK theme picker for Wayland)
- [ ] `hyprshot` (Hyprland-aware screenshot wrapper)

### Audio
- [ ] `pipewire` (pulse, alsa, alsa.support32Bit)
- [ ] `wiremix`, `alsa-utils`, `pavucontrol`

### Bluetooth / Hardware
- [ ] `blueman`, `bluetooth.enable`
- [ ] `xpadneo`, `opentabletdriver`
- [ ] `sane-airscan`, `kdePackages.skanlite`

### Browser
- [ ] `brave` (managed policies + force-installed extensions)

### Shell / Terminal
- [ ] `xonsh` (+ `xontrib-fzf-widgets`, `xonsh-direnv`)
- [ ] `direnv` + `nix-direnv`, `starship`, `zoxide`, `zellij`

### CLI tools
- [ ] `ripgrep`, `ripgrep-all`, `fd`, `eza`, `bat`
- [ ] `btop`, `nmon`, `kmon`, `nvtopPackages.full`
- [ ] `rsync`, `rclone` (+ bisync timer in `Home/xin/rclone.nix`; persist `~/GDrive` and `~/.config/rclone`), `wget`, `curl`, `aria2`
- [ ] `glib`, `unzip`, `zip`, `bzip3`
- [ ] `jq`, `yq`, `dysk`, `pastel`, `gum`, `sc-im`
- [ ] `fastfetch`, `pciutils`, `usbutils`
- [ ] `gh`, `glab`, `gitFull`, `git-lfs`
- [ ] `trash-cli`, `entr`, `progress`, `caligula`
- [ ] `nix-ld`, `gparted`, `nemo-with-extensions`
- [ ] `mpv`, `sox`
- [ ] `yazi` (TUI file manager)
- [ ] `glow` (markdown renderer)
- [ ] `presenterm` (terminal presentations)
- [ ] `frogmouth` (TUI markdown reader)

### Editor
- [ ] `neovim` (via nixvim — system default)

### Dev Languages
- [ ] Haskell: `ghc`, `cabal-install`, `haskell-language-server`, `haskellPackages.hoogle`
- [ ] Python: `python3` (+numpy, scipy, matplotlib, sympy, pandas, jupyter, jupyterlab, scikit-learn, ipython), `pyright`, `ruff`, `black`
- [ ] C: `clang-tools`
- [ ] Zig: `zig`, `zls`
- [ ] Nix: `nixfmt`, `nixd`
- [ ] BQN: `cbqn`
- [ ] Shell: `shellcheck`, `shfmt`
- [ ] Scheme/Lisp: `guile`, `racket`
- [ ] Assembly/Forth: `nasm`, `gforth`
- [ ] Verilog/VHDL: `verilator`, `verible`, `ghdl`, `vhdl-ls`
- [ ] Julia: `julia`
- [ ] R: `R`, `rPackages.languageserver`, `rPackages.tidyverse`, `rPackages.rmarkdown`, `rPackages.knitr`

### Academic / Research
- [ ] `texlive.combined.scheme-full`, `pandoc`, `quarto`
- [ ] `typst`, `tinymist`
- [ ] `mermaid-cli`, `drawio`, `pdf2svg`, `poppler`
- [ ] `hunspell`, `hunspellDicts.en_US`
- [ ] `sqlite`, `gdb`
- [ ] `maxima`, `octave`, `gnuplot`
- [ ] `lean4`, `gap`
- [ ] `claude-code`
- [ ] `zeromq`, `python3Packages.jupyter`

### Notes / Knowledge
- [ ] `obsidian`
- [ ] `zotero`
- [ ] `sioyek` (wrapped `QT_QPA_PLATFORM=xcb`)
- [ ] `zathura`, `foliate`, `libation`
- [ ] `anki-bin`, `pdfannots2json`, `visidata`

### Productivity
- [ ] `taskwarrior3`, `timewarrior`, `taskwarrior-tui`
- [ ] `thunderbird`
- [ ] `aerc` (TUI email client)
- [ ] `notmuch` (email indexer)
- [ ] `isync` (IMAP sync — binary: `mbsync`)
- [ ] `msmtp` (SMTP relay)
- [ ] `khal`, `vdirsyncer`, `calcurse`
- [ ] `ledger`, `beancount`, `fava`, `gnucash`
- [ ] `newsflash`
- [ ] `dijo` (TUI habit tracker)
- [ ] `porsmo` (TUI Pomodoro timer)
- [ ] `wtfutil` (terminal dashboard — **note**: `pkgs.wtfutil`, not `pkgs.wtf`)
- [ ] `activitywatch` (automatic activity tracker)
- [ ] `hledger`, `hledger-ui`, `hledger-web`
- [ ] `haskellPackages.arbtt` (rule-based time tracking; use `services.arbtt`)
- [ ] `datasette` (SQLite browser/API)

### Backup / Storage
- [ ] `borgbackup`, `btrbk`, `snapper`

### Virtualization
- [ ] `libvirtd` + `qemu_kvm` + `swtpm`, `virt-manager`, `spice*`, `distrobox`, `docker`

### Art / Media
- [ ] `openscad`, `openscad-lsp`, `graphviz`, `cura-appimage`
- [ ] `obs-studio`, `vlc`, `inkscape-with-extensions`, `gimp-with-plugins`, `krita`, `blender`
- [ ] `pureref` (custom AppImage derivation), `allusion` (custom AppImage derivation)
- [ ] `yt-dlp`, `ffmpeg`, `wl-color-picker`, `pinta`

### Games
- [ ] `xivlauncher`, `hyperspeedcube`, `exercism` (CLI), `steam`

### Stenography
- [ ] `plover-full` (from plover-flake)

### Fonts
- [ ] `iosevka`, `iosevka-comfy`
- [ ] `jetbrains-mono`
- [ ] `sarasa-gothic`
- [ ] `noto-fonts`
- [ ] `overpass`
- [ ] `fira-code`, `fira-go`
- [ ] `nerdfonts` (symbols-only subset)
- [ ] `julia-mono` ← new
- [ ] `cm-unicode` ← new

---

## Known Gaps & Notes

| Item | Status |
|------|--------|
| **sagemath** | Not in nixpkgs (removed 2023). Use `distrobox` with an Ubuntu container. |
| **hyprscroller** | Deprecated upstream. Use `pkgs.hyprlandPlugins.hyprscrolling` instead. |
| **rofi-wayland** | Merged into `pkgs.rofi` — Wayland support is now built-in. |
| **tbkeys** | Not in nixpkgs. Install `.xpi` manually or write a fetch derivation. |
| **Habitica hook** | Not in nixpkgs. Write a Python on-exit hook script. |
| **shake-to-find cursor** | Not native in Hyprland. Track upstream; use `cursor.inactive_timeout` for now. |
| **Emacs** | Removed from system. If org-agenda is still needed, install `pkgs.emacs-pgtk` as a regular package and configure without doom-emacs-unstraightened. |
| **nixvim** | Flake-only (`github:nix-community/nixvim`). Not in nixpkgs. |
| **`swww` → `awww`** | `pkgs.swww` is a deprecated alias. The real nixpkgs attr is `pkgs.awww` (upstream project renamed in v0.12.1). |
| **`pkgs.wtf`** | `pkgs.wtf` is a Windows kernel fuzzer, not a dashboard. Personal dashboard is `pkgs.wtfutil`. |
| **`aerc` + `isync`** | Both in nixpkgs. Package attr is `isync`; the binary is `mbsync`. Don't confuse them. |
| **`selfspy`** | Not in nixpkgs. Skip; use `activitywatch` instead (in nixpkgs, privacy-respecting). |
| **impermanence + systemd initrd** | `boot.initrd.postDeviceCommands` is blocked by an assertion when `boot.initrd.systemd.enable = true`. Must use `boot.initrd.systemd.services` with `before = [ "initrd-fs.target" ]` for the rollback service. |
| **impermanence flake** | `github:nix-community/impermanence` is flake-only — not in nixpkgs. Add to flake inputs. |
| **sops + impermanence** | sops decrypts using `/etc/ssh/ssh_host_ed25519_key`. This file must be in `environment.persistence."/persist".files` or sops cannot decrypt on the second boot. |
