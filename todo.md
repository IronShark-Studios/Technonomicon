# Technonomicon — Ground-Up Refactor Checklist

This file tracks every package, service, setting, config file, and design decision in the repo.
Each item is a checkbox. Check it off once it has been re-implemented and verified in the new system.

Sections follow the rebuild order: architecture first, then core system, then apps, then user config.

---

## 1. Flake Architecture

### Flake inputs to wire up
- [ ] `nixpkgs` (unstable) — primary package channel
- [ ] `nixpkgs-stable` (26.05) — passed as `pkgs-stable` specialArg to both hosts
- [ ] `flake-parts` (`hercules-ci/flake-parts`) — outputs layer
- [ ] `import-tree` (`vic/import-tree`) — auto-imports all `.nix` under `Modules/` and `Hosts/`, eliminating any manual module list
- [ ] `hjem` (`feel-co/hjem`) — lightweight dotfile manager (replaces home-manager)
- [ ] `hjem-impure` (`Rexcrazy804/hjem-impure`) — adds impure/symlink support for hjem
- [ ] `sops-nix` — secret encryption via age keys
- [ ] `doom-emacs-unstraightened` — nix-native Doom Emacs build (no `doom sync` at runtime)
- [ ] `ewm` (`codeberg.org/ezemtsov/ewm`) — Emacs-native Wayland compositor
- [ ] `app-launcher` (`SebastienWae/app-launcher`) — Emacs app launcher (non-flake input, built as trivialBuild)
- [ ] `plover-flake` (`openstenoproject/plover-flake`) — stenography software
- [ ] `nixos-hardware` — ThinkPad T480s preset (Kvasir only)
- [ ] `nix-index-database` — provides `comma` (`,`) and `nix-index` command-not-found handler

### Flake structural decisions
- [ ] `flake-parts` as the outputs wrapper with `mkFlake`
- [ ] `import-tree` auto-importing: every `.nix` in `Modules/` and `Hosts/` becomes a nixosModule automatically — no central list
- [ ] Module naming convention: all shared modules prefixed `Tn-` (Technonomicon)
- [ ] `allowUnfree = true` globally in nixpkgs config
- [ ] `nixpkgs-stable` passed as `pkgs-stable` specialArg so any module can pin individual packages to stable
- [ ] System state version: `23.11` on both hosts
- [ ] `shell.nix` at root: empty mkShell (just `buildInputs = []`) for dev environment entry point

---

## 2. Secrets (sops-nix)

- [ ] `.sops.yaml` — three age keys configured:
  - `age1c6xvu75xanvh0zgllqz9zrqv9g6ctf4pysngdlgcu27mf2q23d7s0rphn7`
  - `age1cgqkldjp38n7e5shv5ptakrrzmjn0pcr7juld7kjdwqfpmqn59wq2s4hlu`
  - `age10nctks2e0tkzc7asv0z49fhtdulcq5yrzuf0p7xpxty5v6lxwvusltgjpy`
- [ ] Decryption key source: `/etc/ssh/ssh_host_ed25519_key` on each machine
- [ ] `_secrets.yaml` — SOPS-encrypted YAML with:
  - [ ] `xin-password` — hashed user password (referenced as `config.sops.secrets.xin-password.path`, `neededForUsers = true`)
- [ ] `.gitattributes` — git-crypt rules encrypting `*.key` and `Secrets/**` (currently no files there; keep as intent)

---

## 3. Host: Akmon (Desktop)

- [ ] Hostname: `Akmon`
- [ ] User shell: `pkgs.xonsh`
- [ ] User `xin` groups: `wheel docker ydotool scanner lp uinput input dialout plugdev libvirtd tty`

### Boot / filesystem
- [ ] Bootloader: systemd-boot + EFI, `canTouchEfiVariables = true`
- [ ] `/` — ext4, UUID `b6d238cf…`
- [ ] `/boot` — vfat, UUID `083D-D05F`
- [ ] swap — UUID `d1c78038…`

### CPU / kernel
- [ ] CPU: Intel; `hardware.cpu.intel.updateMicrocode = true`
- [ ] Kernel: `pkgs.linuxPackages` (latest stable)
- [ ] initrd kernel modules: `nvidia`, `nvidia_modeset`, `nvidia_uvm`, `nvidia_drm`, `xhci_pci`, `thunderbolt`, `nvme`, `ahci`, `usb_storage`, `usbhid`, `sd_mod`
- [ ] Extra kernel modules: `uinput`, `kvm-intel`
- [ ] Kernel params: `nvidia-drm.modeset=1`, `nvidia-drm.fbdev=1`
- [ ] Blacklist kernel module: `wacom`

### GPU (Nvidia)
- [ ] `services.xserver.videoDrivers = [ "nvidia" ]`
- [ ] `hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable`
- [ ] `hardware.nvidia.open = true`
- [ ] `hardware.nvidia.nvidiaSettings = true`
- [ ] `hardware.nvidia.modesetting.enable = true`
- [ ] `hardware.nvidia.powerManagement.enable = false`
- [ ] `hardware.nvidia-container-toolkit.enable = true` (Docker GPU passthrough)

### Other hardware
- [ ] `hardware.uinput.enable = true`
- [ ] `hardware.opentabletdriver.enable = true; daemon.enable = true`

---

## 4. Host: Kvasir (Laptop — Lenovo ThinkPad T480s)

- [ ] Hostname: `Kvasir`
- [ ] Imports `inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t480s`
- [ ] User shell: `pkgs.xonsh` (same as Akmon)
- [ ] User `xin` groups: same as Akmon

### Boot / filesystem
- [ ] Bootloader: systemd-boot + EFI, `efiSysMountPoint = "/boot"`
- [ ] `/` — ext4, UUID `a045a989…`
- [ ] `/boot` — vfat, UUID `9D34-376A`
- [ ] No swap partition

### CPU / kernel
- [ ] CPU: Intel; `hardware.cpu.intel.updateMicrocode = true`
- [ ] Kernel: `pkgs.linuxPackages` (latest stable)
- [ ] initrd kernel modules: `xhci_pci`, `nvme`, `usb_storage`, `usbhid`, `sd_mod` (no thunderbolt/ahci, no Nvidia)
- [ ] Extra kernel modules: `uinput`, `kvm-intel`
- [ ] Blacklist kernel module: `wacom`

### Hardware (no Nvidia)
- [ ] No GPU-specific config (uses mesa/integrated Intel graphics)
- [ ] `hardware.uinput.enable = true`
- [ ] `hardware.opentabletdriver.enable = true; daemon.enable = true`

---

## 5. Module: `Tn-nix` (nix-settings.nix)

- [ ] `nix.settings.experimental-features = [ "nix-command" "flakes" ]`
- [ ] `programs.nix-index.enable = true`
- [ ] `programs.nix-index-database.comma.enable = true` — enables `,` command (runs uninstalled packages via nix-index)
- [ ] `programs.nh.enable = true` — `nh` rebuild wrapper
- [ ] `programs.nh.clean.enable = true; clean.extraArgs = "--keep-since 6d --keep 3"` — auto-GC
- [ ] `programs.nh.flake = "/home/xin/Projects/Technonomicon/"` — hardcoded flake path for `nh`
- [ ] `nixpkgs.config.allowUnfree = true`

---

## 6. Module: `Tn-desktop` (desktop.nix)

### Compositor / WM
- [ ] `programs.ewm.enable = true` — ewm Wayland compositor (entire desktop lives in Emacs)
- [ ] `programs.ewm.emacsPackage` set from `Tn-emacs` (the ewm-aware Emacs build)

### Display manager
- [ ] `services.greetd.enable = true`
- [ ] greetd session: `tuigreet --time --asterisks --remember --sessions <wayland-sessions-path>`
- [ ] greetd user: `greeter`
- [ ] greetd systemd service: `Type = "idle"`, TTY reset/hangup/deallocate on stop

### Keyboard remapping (Kanata)
- [ ] `services.kanata.enable = true`
- [ ] `services.kanata.package = pkgs.kanata-with-cmd`
- [ ] Config sourced from `./_kanata.kbd` (see Section 17)

### Input
- [ ] `services.libinput.enable = true`
- [ ] Touchpad: `tappingDragLock = false`, `middleEmulation = false`

### Audio
- [ ] `services.pulseaudio.enable = false`
- [ ] `services.pipewire.enable = true`
- [ ] `services.pipewire.pulse.enable = true`
- [ ] `services.pipewire.alsa.enable = true`
- [ ] `services.pipewire.alsa.support32Bit = true`

### Hardware
- [ ] `hardware.bluetooth.enable = true`
- [ ] `hardware.graphics.enable = true`
- [ ] `hardware.xpadneo.enable = true` — Xbox gamepad driver
- [ ] `hardware.sane.enable = true; extraBackends = [ pkgs.sane-airscan ]` — scanning

### Security / keyring
- [ ] `security.pam.services.swaylock = {}` — PAM entry so swaylock can unlock with password
- [ ] `services.gnome.gnome-keyring.enable = true`

### Session environment variables
- [ ] `NIXOS_OZONE_WL = "1"`
- [ ] `ELECTRON_OZONE_PLATFORM_HINT = "auto"`
- [ ] `QT_QPA_PLATFORM = "wayland"`
- [ ] `QT_WAYLAND_DISABLE_WINDOWDECORATION = "1"`
- [ ] `NIXPKGS_ALLOW_UNFREE = "1"`

### Packages (desktop tools)
- [ ] `grim` — Wayland screenshot tool
- [ ] `slurp` — region selector for grim
- [ ] `wtype` — Wayland xdotool equivalent
- [ ] `blueman` — Bluetooth manager GUI
- [ ] `swaylock` — screen locker
- [ ] `gromit-mpx` — screen annotation tool
- [ ] `pavucontrol` — PipeWire/PulseAudio volume GUI
- [ ] `wl-clipboard` — `wl-copy`/`wl-paste`
- [ ] `brightnessctl` — backlight control
- [ ] `gnome-themes-extra` — includes Adwaita-dark
- [ ] `adwaita-icon-theme` — icon theme
- [ ] `kdePackages.skanlite` — scanner GUI
- [ ] `plover-full` (from `inputs.plover-flake`) — stenography software

### XDG portal
- [ ] `xdg.portal.enable = true`
- [ ] `xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ]`
- [ ] `xdg.portal.configPackages = [ pkgs.xdg-desktop-portal-gtk ]`

### Programs
- [ ] `programs.steam.enable = true`
- [ ] `programs.ydotool.enable = true`
- [ ] `programs.appimage.enable = true; binfmt = true` — binfmt registration so AppImages run directly
- [ ] AppImage extra packages: `libepoxy`, `brotli`, `xdg-user-dirs`

### dconf settings
- [ ] `programs.dconf.enable = true`
- [ ] `org/gnome/desktop/interface.color-scheme = "prefer-dark"`
- [ ] `org/gnome/desktop/interface.gtk-theme = "Adwaita-dark"`
- [ ] `org/virt-manager/virt-manager/connections.autoconnect = ["qemu:///system"]`

### environment.etc files
- [ ] `xdg/user-dirs.defaults`: DESKTOP=Archive, DOWNLOAD=Downloads, TEMPLATES=Projects, PUBLICSHARE=Projects, DOCUMENTS=Media, MUSIC=Media, PICTURES=Media, VIDEOS=Media
- [ ] `xdg/fcitx5/config` → sourced from `_fcitx5-config`
- [ ] `xdg/gromit-mpx.cfg` → sourced from `_gromit-mpx.cfg`
- [ ] `xdg/gromit-mpx.ini` → sourced from `_gromit-mpx.ini`
- [ ] `gtk-3.0/settings.ini` → Adwaita-dark theme
- [ ] `gtk-4.0/settings.ini` → Adwaita-dark theme

### MIME defaults
- [ ] PDF → `sioyek.desktop`
- [ ] `x-scheme-handler/http` → `brave-browser.desktop`
- [ ] `x-scheme-handler/https` → `brave-browser.desktop`
- [ ] `x-scheme-handler/mailto` → `brave-browser.desktop`

### udev rules
- [ ] `ttyACM[0-9]*` → `MODE=0666`
- [ ] `ttyUSB[0-9]*` → `MODE=0666`
- [ ] `uinput` → `GROUP=input, MODE=0660, OPTIONS+="static_node=uinput"`

### Logind
- [ ] `services.logind.settings.Login.HandleSuspend = "ignore"` — no suspend on lid close / suspend key

---

## 7. Module: `Tn-emacs` (emacs.nix)

### Emacs build
- [ ] Apply `doom-emacs-unstraightened.overlays.default` to nixpkgs
- [ ] `programs.ewm.emacsPackage = pkgs.emacsWithDoom { ... }`
- [ ] Base emacs: `pkgs.emacs-pgtk` (pure GTK = native Wayland, no XWayland)
- [ ] `doomDir = ./Doom` (the `Modules/Core/Doom/` directory)
- [ ] `doomLocalDir = "~/.local/share/nix-doom"` (runtime doom state dir)
- [ ] Extra Emacs packages added to build:
  - [ ] `ewm` package (compositor integration)
  - [ ] `treesit-grammars.with-all-grammars` (all tree-sitter grammars bundled)
  - [ ] `app-launcher` — built as trivialBuild from `inputs.app-launcher` source

### Dev toolchains (system packages)
- [ ] `claude-code` — AI coding CLI
- [ ] `sqlite` — database (org-roam backend)
- [ ] `gdb` — debugger
- [ ] `pandoc` — document conversion
- [ ] `mermaid-cli` — diagram generation from org-mode
- [ ] `drawio` — diagram editor (org-drawio)
- [ ] `pdf2svg` — PDF to SVG for LaTeX previews
- [ ] `poppler` — PDF library
- [ ] `texlive.combined.scheme-full` — full TeX Live (LaTeX)
- [ ] `hunspell` — spellchecker
- [ ] `hunspellDicts.en_US` — English dictionary

#### Haskell
- [ ] `ghc`
- [ ] `cabal-install`
- [ ] `haskell-language-server`
- [ ] `haskellPackages.hoogle`

#### Nix
- [ ] `nixfmt` — formatter
- [ ] `nixd` — LSP server

#### Python
- [ ] `python3`
- [ ] `pyright` — LSP / type checker
- [ ] `ruff` — linter
- [ ] `black` — formatter

#### BQN
- [ ] `cbqn` — BQN array language interpreter

#### Shell
- [ ] `shellcheck`
- [ ] `shfmt`

#### Scheme / Lisp
- [ ] `guile`
- [ ] `racket`

#### C
- [ ] `clang-tools` — provides clangd LSP + clang-format

#### Zig
- [ ] `zig`
- [ ] `zls` — Zig LSP

#### Assembly / Forth
- [ ] `nasm` — x86 assembler
- [ ] `gforth` — GNU Forth

#### Verilog / VHDL
- [ ] `verilator`
- [ ] `verible` — Verilog formatter/linter
- [ ] `ghdl` — VHDL simulator
- [ ] `vhdl-ls` — VHDL LSP

#### Jupyter
- [ ] `zeromq` — Jupyter kernel communication
- [ ] `python3Packages.jupyter`

---

## 8. Module: `Tn-shell` (shell.nix)

### Xonsh
- [ ] `programs.xonsh.enable = true`
- [ ] Config: sourced from `./_config.xsh` (see Section 18)
- [ ] Extra xonsh Python packages (built as inline derivations):
  - [ ] `xontrib-fzf-widgets` (laloch/xontrib-fzf-widgets, master, setuptools build)
  - [ ] `xonsh-direnv` (74th/xonsh-direnv v1.6.5, setuptools build)

### Direnv
- [ ] `programs.direnv.enable = true`
- [ ] `programs.direnv.nix-direnv.enable = true`

### Starship prompt
- [ ] `programs.starship.enable = true`
- [ ] Format: `$directory$nix_shell$git_branch$git_commit$git_state$git_status\n$character`
- [ ] All git/directory module color: `#539bf5`
- [ ] Success character: `❯` in `#539bf5`; error character: `✗` in `#ff4b00`
- [ ] `time.disabled = true`
- [ ] `cmd_duration.disabled = true`
- [ ] Directory: `truncate_to_repo = true`, `fish_style_pwd_dir_length = 3`, read-only icon `" "`
- [ ] Git status symbols (all `#539bf5`): conflict, staged, modified, renamed, deleted, untracked `?`, stashed, ahead, behind

### Git
- [ ] `environment.etc."gitconfig".source = ./_gitconfig`
- [ ] `environment.etc."gitignore_global"` ignores: `*~`, `.*~`, `#*#`, `\#*\#`, `.*.swp`

### System packages (shell tools)
- [ ] `nix-your-shell` — keeps nix shell using xonsh
- [ ] `gitFull` — git with full feature set
- [ ] `git-lfs` — large file storage
- [ ] `ghostty` — GPU-accelerated terminal emulator
- [ ] `btop` — process/resource monitor
- [ ] `nmon` — performance monitor
- [ ] `kmon` — kernel module manager TUI
- [ ] `rsync`
- [ ] `rclone`
- [ ] `wget`
- [ ] `glib` — `glib-compile-schemas`, `gsettings`, etc.
- [ ] `unzip`
- [ ] `nix-ld` — run unpatched binaries on NixOS
- [ ] `curl`
- [ ] `zoxide` — smart `cd` replacement
- [ ] `gparted` — partition editor GUI
- [ ] `pciutils` — `lspci`
- [ ] `fastfetch` — system info display
- [ ] `udiskie` — auto-mounts removable media
- [ ] `trash-cli` — `trash-put`, `trash-restore` (safe rm)
- [ ] `ripgrep` — `rg` fast search
- [ ] `ripgrep-all` — `rga` (search PDFs, zip, etc.)
- [ ] `fd` — fast `find` replacement
- [ ] `eza` — modern `ls`
- [ ] `entr` — run commands on file change
- [ ] `progress` — monitor `cp`/`mv`/`dd` progress
- [ ] `copyq` — clipboard manager with history
- [ ] `zip`
- [ ] `caligula` — disk burner TUI (`dd` replacement alias)
- [ ] `gum` — interactive shell scripting toolkit
- [ ] `sc-im` — terminal spreadsheet
- [ ] `gh` — GitHub CLI
- [ ] `glab` — GitLab CLI
- [ ] `jq` — JSON processor
- [ ] `yq` — YAML processor
- [ ] `dysk` — disk space TUI
- [ ] `pastel` — color manipulation CLI
- [ ] `gnumake`
- [ ] `antigravity-fhs` — Python easter egg, FHS shell
- [ ] `usbutils` — `lsusb`
- [ ] `bat` — `cat` with syntax highlighting
- [ ] `mpv` — media player
- [ ] `sox` — audio processing CLI
- [ ] `aria2` — multi-protocol download manager
- [ ] `bzip3` — modern bzip compression
- [ ] `nemo-with-extensions` — file manager
- [ ] `nvtopPackages.full` — GPU process monitor

---

## 9. Module: `Tn-network` (network.nix)

- [ ] `networking.networkmanager.enable = true`
- [ ] `networking.networkmanager.wifi.backend = "iwd"` — iwd instead of wpa_supplicant
- [ ] Hosts file block: `reddit.com`, `www.reddit.com`, `old.reddit.com` (IPv4 `127.0.0.1` + IPv6 `::1`)
- [ ] `time.timeZone = "America/Detroit"`
- [ ] Firewall: enabled; TCP open ports: 7236, 7250; UDP open port: 7236; trusted interface: `p2p-wl+`
- [ ] udev rule: `SUBSYSTEM=="net", KERNEL=="p2p-dev-*", ACTION=="add", TAG-="systemd"` (suppresses systemd unit for p2p WiFi devices)
- [ ] `services.avahi.enable = true; nssmdns4 = true; openFirewall = true` — mDNS/Bonjour
- [ ] `programs.gnupg.agent.enable = true; enableSSHSupport = true`
- [ ] `services.openssh` configured (no root login, no password auth) but `enable = false`
- [ ] `services.printing.enable = true` — CUPS
- [ ] Syncthing:
  - [ ] `enable = true; openDefaultPorts = true`
  - [ ] `guiAddress = "127.0.0.1:8385"`
  - [ ] `user = "xin"; group = "users"; dataDir = "/home/xin/"`
- [ ] Packages:
  - [ ] `impala` — TUI WiFi manager
  - [ ] `gping` — graphical ping

---

## 10. Module: `Tn-sound` (sound.nix)

- [ ] `wiremix` — PipeWire TUI mixer
- [ ] `alsa-utils` — `aplay`, `amixer`, etc.
- [ ] (PipeWire itself is configured in `Tn-desktop` — do not re-add here)

---

## 11. Module: `Tn-utf` (utf.nix)

- [ ] `i18n.defaultLocale = "en_US.UTF-8"`
- [ ] Supported locales: `en_US.UTF-8`, `zh_CN.UTF-8`, `ko_KR.UTF-8`, `ja_JP.UTF-8`
- [ ] All `LC_*` set to `en_US.UTF-8`
- [ ] Input method: fcitx5, Wayland frontend
- [ ] fcitx5 addons:
  - [ ] `fcitx5-gtk` — GTK IM module
  - [ ] `qt6Packages.fcitx5-chinese-addons` — Pinyin/Zhuyin Chinese input
  - [ ] `fcitx5-hangul` — Korean input
  - [ ] `fcitx5-mozc-ut` — Japanese input (Mozc)
  - [ ] `qt6Packages.fcitx5-configtool` — configuration GUI
  - [ ] `fcitx5-nord` — Nord color theme for fcitx5

---

## 12. Module: `Tn-virtualization` (virtualization.nix)

- [ ] `virtualisation.libvirtd.enable = true`
- [ ] `virtualisation.libvirtd.qemu.package = pkgs.qemu_kvm`
- [ ] `virtualisation.libvirtd.qemu.swtpm.enable = true` — TPM emulation for VMs
- [ ] `virtualisation.docker.enable = true`
- [ ] `virtualisation.spiceUSBRedirection.enable = true` — USB passthrough to VMs
- [ ] `programs.virt-manager.enable = true`
- [ ] `programs.dconf.enable = true` (needed by virt-manager)
- [ ] User `xin` extra groups: `libvirtd`, `tty`
- [ ] Packages:
  - [ ] `spice`
  - [ ] `spice-gtk`
  - [ ] `spice-protocol`
  - [ ] `virt-viewer`
  - [ ] `distrobox` — containerized Linux distros on top of Docker

---

## 13. Module: `Tn-web-browsers` (browsers.nix)

- [ ] `programs.chromium.enable = true` — base Chromium module (required for policy infra)
- [ ] Brave browser:
  - [ ] Wayland/Ozone flags in command-line args
  - [ ] Hide crash restore bubble flag
  - [ ] Disable BraveNews, BraveRewards, BraveWallet, WebRtcVolumeAdjust
  - [ ] Inject `initial_preferences` with `browser.custom_chrome_frame = true`
- [ ] Brave managed policies at `/etc/brave/policies/managed/default.json`:
  - [ ] `PasswordManagerEnabled = false`
  - [ ] `AutofillAddressEnabled = false`
  - [ ] `AutofillCreditCardEnabled = false`
  - [ ] `BraveRewardsDisabled = true`
  - [ ] `BraveWalletDisabled = true`
  - [ ] `BraveVPNDisabled = 0` (policy value for disabled)
  - [ ] `TorDisabled = true`
  - [ ] `IPFSCompanionEnabled = false`
  - [ ] `DefaultBrowserSettingEnabled = false`
  - [ ] `MetricsReportingEnabled = false`
  - [ ] `SearchSuggestEnabled = false`
  - [ ] `ShowHomeButton = false`
  - [ ] New tab / homepage: `https://en.wikipedia.org/wiki/Special:Random`
  - [ ] `BraveNewTabWidgetsVisible = false`
  - [ ] `ImagesForNewTabPage = false`
  - [ ] Force-installed extensions:
    - [ ] Surfingkeys — `gfbliohnnapiefjpjlpjnehglfpaknnc`
    - [ ] Dark Reader — `eimadpbcbfnmbkopoojfekhnkhdbieeh`
    - [ ] Bitwarden — `nngceckbapebfimnlniiiahkandclblb`
    - [ ] uBlock Origin — `cjpalhdlnbpafiamejdnhcphjbkeiagm`
    - [ ] New Tab, New Window — `dndlcbaomdoggooaficldplkcmkfpgff`
    - [ ] LeechBlock NG — `blaaajhemilngeeffpbfkdjjoefldkok`
- [ ] hjem file: `~/.config/surfingkeys/config.js` → sourced from `_surfingkeys.js`

---

## 14. Module: `Tn-communication` (communication.nix)

- [ ] `newsflash` — RSS/Atom feed reader
- [ ] `mako` — Wayland notification daemon
- [ ] mako config via hjem: `~/.config/mako/config` → `default-timeout=3000`
- [ ] systemd user service for mako: `wantedBy = graphical-session.target; ExecStart = mako; Restart = on-failure`
- [ ] hjem file: `~/.config/discord/settings.json` → `{ "SKIP_HOST_UPDATE": true }` (for when Discord is installed)
- [ ] (slack, discord packages are commented out — add when needed)

---

## 15. Module: `Tn-web-apps` (web-apps.nix)

Brave PWA desktop entries (all use `--app=URL --start-maximized`):

- [ ] Discord App — `discord.gg/channels/@me`
- [ ] Khan Academy — `khanacademy.org`
- [ ] The Odin Project — `theodinproject.com/dashboard`
- [ ] YouTube — `youtube.com`
- [ ] Gemini — `gemini.google.com/app`
- [ ] Steno Jig — `joshuagrams.github.io/steno-jig/form.html`
- [ ] Typey Type — `didoesdigital.com/typey-type/lessons/`
- [ ] Gmail — `gmail.com`
- [ ] Calendar — `calendar.google.com`
- [ ] Toggl — `track.toggl.com/timer`
- [ ] Syncthing — `localhost:8385`
- [ ] Exercism — `exercism.org/dashboard`

---

## 16. Module: `Tn-games` (games.nix)

- [ ] `xivlauncher` — Final Fantasy XIV launcher
- [ ] `hyperspeedcube` — speedcubing puzzle simulator
- [ ] `exercism` — Exercism CLI (paired with Exercism PWA in web-apps)
- [ ] (Steam is in `Tn-desktop` — do not re-add)

---

## 17. Module: `Tn-learning` (learning.nix)

- [ ] `ledger` — plain-text accounting
- [ ] `fava` — web UI for beancount
- [ ] `beancount` — double-entry bookkeeping
- [ ] `gnucash` — GUI accounting
- [ ] `visidata` — tabular data TUI
- [ ] `anki-bin` — spaced repetition flashcards
- [ ] `zotero` — reference manager
- [ ] `zathura` — minimal PDF/document viewer
- [ ] `libation` — Audible audiobook downloader
- [ ] `pdfannots2json` — extract PDF annotations to JSON
- [ ] `rnote` — wrapped with `GDK_BACKEND=x11` (workaround for Wayland issues)
- [ ] udev rules for Javelin steno machine at `/etc/udev/rules.d/70-javelin.rules`:
  - [ ] RP2040 bootloader: USB ID `2e8a:0003`, `TAG+=uaccess`
  - [ ] Generic HID hidraw: `TAG+=uaccess`

---

## 18. Module: `Tn-pdf` (pdf.nix)

- [ ] `sioyek` — PDF viewer, wrapped with `QT_QPA_PLATFORM=xcb` (XCB workaround for Wayland)
- [ ] Sioyek preferences at `/etc/sioyek/prefs_user.config`:
  - [ ] `default_dark_mode 1`
  - [ ] Background color: `0.1 0.1 0.1`; contrast: `0.8`
  - [ ] `ruler_mode 1`
  - [ ] `super_fast_search 1`
  - [ ] `should_launch_new_window 1`
  - [ ] `vertical_move_amount 1.0`
  - [ ] Search portals: Google, Google Scholar (`s`), arXiv (`a`), LibGen (`l`)
  - [ ] Inverse search: `emacsclient -n +%2 "%1"` (click PDF → open in Emacs at line)
- [ ] Sioyek keys at `/etc/sioyek/keys_user.config` (Colemak-DH navigation):
  - [ ] `move_up u` / `move_down e`
  - [ ] `keyboard_select v`
  - [ ] `toggle_dark_mode <f8>`
  - [ ] `regex_search /`
  - [ ] `external_search s`

---

## 19. Module: `Tn-art` (art.nix)

- [ ] `openscad` — parametric 3D CAD
- [ ] `openscad-lsp` — OpenSCAD LSP server
- [ ] `graphviz` — graph visualization
- [ ] `cura-appimage` — 3D print slicer
- [ ] `obs-studio` — screen/video recording
- [ ] `vlc` — media player
- [ ] `inkscape-with-extensions` — vector graphics
- [ ] `gimp-with-plugins` — raster image editor
- [ ] `krita` — digital painting
- [ ] `blender` — 3D modeling/animation
- [ ] `pureref` — custom derivation (see Section 20)
- [ ] `allusion` — custom derivation (see Section 20)
- [ ] `yt-dlp` — YouTube/video downloader
- [ ] `ffmpeg` — video/audio processing
- [ ] `wl-color-picker` — Wayland color picker
- [ ] `pinta` — simple image editor
- [ ] Desktop entries for `allusion` and `pureref` with embedded icon paths
- [ ] OpenSCAD config at `/etc/xdg/OpenSCAD/OpenSCAD.conf`:
  - [ ] `colorscheme = DeepOcean`
  - [ ] `autoReloadAndPreview = true`
  - [ ] `defaultProjectionValue = 0` (orthogonal projection)
  - [ ] Hidden toolbar, console, customizer, editor

---

## 20. Custom Derivations

### PureRef (art reference tool)
- [ ] Version: `2.0.3`
- [ ] Source: bundled AppImage `_PureRef-2.0.3_x64.Appimage` committed to repo
- [ ] Derivation: `pkgs.runCommand "pureref"` — creates shell-script wrapper that `exec`s the AppImage directly
- [ ] Relies on `programs.appimage.binfmt = true` for execution

### Allusion (image organizer)
- [ ] Version: `1.0.0-rc.10`
- [ ] Source: bundled AppImage `_Allusion-1.0.0-rc.10.AppImage` committed to repo
- [ ] Same derivation pattern as PureRef: `pkgs.runCommand "allusion"` → shell wrapper

---

## 21. Kanata Keyboard Layout (`_kanata.kbd`)

### Global config flags
- [ ] `process-unmapped-keys yes`
- [ ] `concurrent-tap-hold yes`
- [ ] `danger-enable-cmd yes`
- [ ] `linux-continue-if-no-devs-found yes` — non-fatal if device not found (allows sharing config with Kvasir)

### Devices (Akmon's Kinesis Advantage2)
- [ ] `/dev/input/by-id/usb-Kinesis_Advantage2_Keyboard_314159265359-event-if02`
- [ ] `/dev/input/by-id/usb-Kinesis_Advantage2_Keyboard_314159265359-event-mouse`
- [ ] `/dev/input/by-id/usb-Kinesis_Advantage2_Keyboard_314159265359-if01-event-kbd`
- [ ] `/dev/input/by-id/usb-Kinesis_Advantage2_Keyboard_314159265359-mouse`
- [ ] `/dev/input/by-path/platform-i8042-serio-0-event-kbd` — built-in keyboard fallback

### Base layer: Colemak-DH
- [ ] Full Colemak-DH key layout (deflayer `colemak`)

### Home-row mods (all tap-hold: 200ms tap / 250ms hold)
- [ ] Left hand:
  - [ ] `f` → tap f / hold lsft
  - [ ] `p` → tap p / hold lsft (pinky side duplicate shift)
  - [ ] `r` → tap r / hold lalt
  - [ ] `s` → tap s / hold lmet
  - [ ] `t` → tap t / hold lctl
- [ ] Right hand:
  - [ ] `l` → tap l / hold rsft
  - [ ] `u` → tap u / hold rsft (pinky side duplicate shift)
  - [ ] `n` → tap n / hold rctl
  - [ ] `e` → tap e / hold rmet
  - [ ] `i` → tap i / hold ralt

### Thumb cluster
- [ ] `spc` → tap space / hold nav-layer (tap-hold 200ms / 350ms)
- [ ] `bspc` → tap backspace / hold nav-layer (tap-hold 200ms / 350ms)
- [ ] `esc` → tap esc / hold num-layer (tap-hold 250ms / 250ms)
- [ ] `ret` → tap return / hold rmet (tap-hold 250ms / 250ms, alias `sret`)
- [ ] `del` → tap delete / hold rmet (tap-hold 250ms / 250ms, alias `sdel`)

### One-shot modifiers
- [ ] `lsft`/`rsft` → one-shot (1500ms timeout) / sticky on hold
- [ ] `lctl`/`rctl` → one-shot / sticky
- [ ] `lmet`/`rmet` → one-shot / sticky
- [ ] `lalt`/`ralt` → one-shot / sticky

### Nav layer (hold spc or bspc)
- [ ] `S-lft` (select left), `pgup`, `S-rght` (select right)
- [ ] `C-lft` (word back), `up`, `C-rght` (word forward)
- [ ] `home`, `pgdn`, `end`
- [ ] `lft`, `down`, `rght`
- [ ] `@mouse` chord (lctl+lalt+lmet+lsft+spc multi) and `@mouse-2` bindings

### Num layer (hold esc)
- [ ] Numpad layout on HJKL cluster: 7/8/9 | 4/5/6 | 1/2/3 | 0 row

---

## 22. Xonsh Shell Config (`_config.xsh`)

### Shell options
- [ ] `$AUTO_CD = True`
- [ ] `$COLOR_INPUT = True`
- [ ] `$HISTCONTROL = {'ignoredups'}`
- [ ] `$COMPLETIONS_CONFIRM = False`
- [ ] `$UPDATE_COMPLETIONS_ON_KEYPRESS = False`
- [ ] `$COMPLETIONS_BRACKETS = False`
- [ ] `$COMPLETION_QUERY_LIMIT = 50`
- [ ] `$TIMER_FORMAT = '[Execution Time: {time:.2f}s]'`
- [ ] `$TIMER_THRESHOLD = 3`
- [ ] Colored man pages via `$LESS_TERMCAP_*` variables

### Editor
- [ ] `$SUDO_EDITOR = "emacsclient -t -a ''"`
- [ ] `$EDITOR = "emacsclient -t -a ''"`

### Plugins
- [ ] `xontrib direnv`
- [ ] `xontrib fzf-widgets`

### FZF keybindings
- [ ] `c-r` → history search
- [ ] `c-s` → SSH picker
- [ ] `c-t` → file picker
- [ ] `c-g` → directory picker

### External integrations
- [ ] `execx($(zoxide init xonsh))` — `z` command
- [ ] `execx($(starship init xonsh))` — starship prompt
- [ ] `execx($(nix-your-shell xonsh))` — nix shell stays xonsh

### Directory aliases
- [ ] `tn` → `~/Projects/Technonomicon`
- [ ] `ps` → `~/Projects/Personal-Blog/content/posts`
- [ ] `pj` → `~/Projects`
- [ ] `dl` → `~/Downloads`

### Git aliases
- [ ] `gst` → `git status -sb`
- [ ] `gco` → `git checkout`
- [ ] `gl` → `git log --oneline -n 10`
- [ ] `cpv` → `rsync -h --progress`

### Shell events / hooks
- [ ] `@events.on_chdir` → `auto_ls`: prints vterm directory tracking escape if inside Emacs vterm, then runs `eza --icons --oneline --group-directories-first --color=always`

### Custom functions
- [ ] `eo <path>` — open file in Emacs via vterm escape sequence
- [ ] `copypath` — copy CWD to clipboard via `wl-copy`
- [ ] `copyfile <file>` — copy file contents to clipboard via `wl-copy`
- [ ] `rg-menu` / `rgx-menu` — ripgrep → fzf interactive search
- [ ] `fd-menu` / `fdx-menu` — fd → fzf interactive file picker
- [ ] `monitor_command <cmd>` — run command and watch it with `progress -mp <pid>`
- [ ] `pdf-split <file>` — split PDF by bookmarks via `cpdf` in a nix-shell
- [ ] `ca` — clear screen + 100 newlines (visual reset)

### PTK keybindings
- [ ] `$XONSH_CTRL_BKSP_DELETION = True`
- [ ] `@events.on_ptk_create`: `c-left` → jump previous word; `c-right` → jump next word

### Aliases (selected)
- [ ] `cat` → `bat`
- [ ] `cd` → `z` (zoxide)
- [ ] `find` → `fd -g -i`
- [ ] `grep` → `rg -i`
- [ ] `dd` → `caligula burn`
- [ ] `lx` → eza all files
- [ ] `lld` → eza tree
- [ ] `lxd` → eza tree all (ignoring 40-char names)
- [ ] `ll` → eza basic
- [ ] `ls` → eza long
- [ ] `lsx` → eza long all
- [ ] `ld` → eza dirs only
- [ ] `rm` → `trash-put -v`
- [ ] `rm-s` → `shred -f`
- [ ] `rm-r` → `trash-restore`
- [ ] `power-off` → `/etc/scripts/clean-power-off.sh`
- [ ] `logout` → `sudo kill -9 -1`
- [ ] `restart` → `sudo reboot`
- [ ] `bzip` → `bzip3`
- [ ] `book-dl` → `aria2c -x 16 -s 16`

---

## 23. Git Config (`_gitconfig`)

- [ ] `user.name = xin`
- [ ] `user.email = git@ironshark.org`
- [ ] `core.excludesfile = /etc/gitignore_global`
- [ ] Aliases:
  - [ ] `send` — status + prompt + add all + commit + push
  - [ ] `unstage` — `restore --staged`
  - [ ] `history` — `log --graph --pretty=oneline`
  - [ ] `last` — `log -1 HEAD`
- [ ] `init.defaultBranch = main`
- [ ] `pull.rebase = false`
- [ ] `push.default = current`

---

## 24. Doom Emacs: `init.el` — Modules

### :completion
- [ ] `(corfu +icons +dabbrev +orderless)`
- [ ] `(vertico +icons)`

### :ui
- [ ] `doom`
- [ ] `doom-dashboard`
- [ ] `hl-todo`
- [ ] `modeline`
- [ ] `ophints`
- [ ] `(popup +defaults)`
- [ ] `treemacs`
- [ ] `(vc-gutter +pretty)`
- [ ] `vi-tilde-fringe`
- [ ] `workspaces`
- [ ] `indent-guides`
- [ ] `ligatures`
- [ ] `zen`

### :editor
- [ ] `(evil +everywhere)`
- [ ] `file-templates`
- [ ] `fold`
- [ ] `snippets`
- [ ] `format`
- [ ] `multiple-cursors`

### :emacs
- [ ] `(dired +dirvish)`
- [ ] `undo`
- [ ] `vc`
- [ ] `(whitespace +guess)`

### :term
- [ ] `vterm`

### :checkers
- [ ] `syntax`
- [ ] `spell`
- [ ] `grammar`

### :tools
- [ ] `(biblio +org)`
- [ ] `eww`
- [ ] `eval`
- [ ] `lookup`
- [ ] `(magit +forge)`
- [ ] `make`
- [ ] `lsp`
- [ ] `tree-sitter`
- [ ] `debugger`
- [ ] `direnv`
- [ ] `pdf`

### :lang
- [ ] `beancount`
- [ ] `(python +lsp +tree-sitter +pyright)`
- [ ] `(cc +lsp +tree-sitter)`
- [ ] `(haskell +lsp +tree-sitter)`
- [ ] `(nix +lsp +tree-sitter)`
- [ ] `(zig +lsp +tree-sitter)`
- [ ] `(scheme +tree-sitter)`
- [ ] `(javascript +lsp +tree-sitter +prettier)`
- [ ] `emacs-lisp`
- [ ] `markdown`
- [ ] `(latex +cdlatex)`
- [ ] `(org +roam +dragndrop +jupyter +pandoc)`
- [ ] `(sh +tree-sitter)`

### :config
- [ ] `literate`
- [ ] `(default +bindings +smartparens)`

---

## 25. Doom Emacs: `packages.el` — Extra Packages

- [ ] `ewm` — compositor integration
- [ ] `pulseaudio-control` — volume control from Emacs
- [ ] `exec-path-from-shell` — inherit shell PATH
- [ ] `fcitx` — fcitx5 integration (disable in evil normal state)
- [ ] `aidermacs` — AI coding assistant (aider backend)
- [ ] `bqn-mode` — BQN array language
- [ ] `forth-mode` — Forth language
- [ ] `org-roam-ui` — visual Roam graph in browser
- [ ] `org-modern` — modern org styling
- [ ] `svg-tag-mode` — SVG tags for org keywords
- [ ] `org-kanban` — kanban boards in org
- [ ] `org-appear` — auto-reveal markup at cursor
- [ ] `org-autolist` — smart list continuation
- [ ] `org-fragtog` — auto-toggle LaTeX fragment previews
- [ ] `highlight-parentheses` — rainbow parens
- [ ] `ob-mermaid` — mermaid diagrams in org-babel
- [ ] `anki-editor` — create Anki cards from org
- [ ] `org-super-agenda` — custom agenda grouping
- [ ] `org-drawio` — draw.io diagrams in org
- [ ] `evil-textobj-tree-sitter` — tree-sitter text objects for evil
- [ ] `git-auto-commit-mode` — auto-commit on save (for Grimoire)
- [ ] `minuet` — Ollama code completion (commented out, configure when AI inference is ready)
- [ ] `which-key-posframe` — posframe for which-key (commented out, consider enabling)

---

## 26. Doom Emacs: `config.el` — Key Settings

### Identity
- [ ] `user-full-name = "Xin IronShark"`
- [ ] `user-mail-address = "xin@ironshark.org"`

### Font / Theme
- [ ] Font: JetBrains Mono, size 23
- [ ] Theme: `doom-city-lights`
- [ ] Line numbers: `'visual`
- [ ] Custom face overrides:
  - [ ] Foreground: `#CFDFDF`
  - [ ] Comments: `#8C98A6`, italic
  - [ ] Constants: `#FFD700`
  - [ ] Types: `#FFCB6B`
  - [ ] Numbers: `#FF9F43`
  - [ ] Strings: `#FF5370`
  - [ ] Keywords: `#00FFFF`
  - [ ] Variables: `#00FA9A`
  - [ ] Functions: `#1E90FF`
- [ ] Org headings: `#00FFFF`, levels 1–6 height 1.5/1.4/1.3/1.2/1.1/1.0, box with `#1D232F` background
- [ ] highlight-parentheses: 10-color cycle (`#00FFFF`, `#39FF14`, `#FF00FF`, `#FFD700`, etc.)

### EWM super-key bindings (on `ewm-mode-map`)
- [ ] `s-1` through `s-9` → switch/create workspace 0–8
- [ ] `s-b` → `+vertico/switch-workspace-buffer`
- [ ] `s-B` → `consult-buffer`
- [ ] `s-<tab>` → `+workspace/other`
- [ ] `s-M-<tab>` → `+workspace/switch-to`
- [ ] `s-C-<tab>` → `+workspace/rename`
- [ ] `s-x` → `execute-extended-command`
- [ ] `s-t` → `Tn/vterm-current-window` (new vterm in current window)
- [ ] `s-Q` → `Tn/trash-and-poweroff` (trash `~/Downloads/*` then poweroff)
- [ ] `s-d` → `Tn/smart-close` (close compositor surface or kill buffer)
- [ ] `s-q` → `Tn/run-swaylock`
- [ ] `s-f` → `find-file`
- [ ] `s-a` → `org-agenda`
- [ ] `s-c` → `org-roam-dailies-capture-today`
- [ ] `s-C` → `org-roam-dailies-capture-date`
- [ ] `s-j` → `org-roam-dailies-goto-today`
- [ ] `s-J` → `org-roam-dailies-goto-date`
- [ ] `s-M-j` → `org-roam-dailies-goto-tomorrow`
- [ ] `s-w` → `split-window-horizontally`
- [ ] `s-W` → `evil-window-delete`
- [ ] `s-y` → `Tn/screenshot-clipboard` (grim + slurp → wl-copy)
- [ ] `s-SPC` → `Tn/dashboard-and-leader` (dashboard + leader key)
- [ ] `s-<return>` → `app-launcher-run-app`

### Other keybindings
- [ ] `C-S-v` (insert) → `clipboard-yank`
- [ ] `<f4>` (normal/visual/insert) → `+vterm/toggle`
- [ ] `SPC` in org insert → smart checkbox space
- [ ] Leader `n q` → `my/publish-to-quarto`
- [ ] Leader `o a` → `aidermacs-transient-menu`
- [ ] `s` (normal/visual) → `avy-goto-char-timer` (replaces evil-snipe)
- [ ] `S` (normal/visual) → `avy-goto-line`
- [ ] evil outer text objects: `f` → function, `c` → class, `a` → parameter (tree-sitter)
- [ ] evil inner text objects: `f` → function, `c` → class, `a` → parameter (tree-sitter)
- [ ] `]f` / `[f` → jump next/prev function (tree-sitter)
- [ ] `<up>` / `<down>` normal → `evil-previous/next-visual-line`

### Auto-save hooks
- [ ] Save on: `evil-normal-state-entry`, `evil-insert-state-entry`, `doom-switch-buffer`, `doom-switch-window`, `focus-out`

### Org config
- [ ] Org directory: `~/Grimoire/`
- [ ] Agenda files: `~/Grimoire/Notes/`
- [ ] Roam directory: `~/Grimoire/Notes/`
- [ ] Roam dailies: `Journal/` subdirectory
- [ ] Capture files: `Inbox.org`, `Projects.org`, `Notes/Journal/classic-journal.org`
- [ ] TODO keywords: `TODO → NEXT → ACTIVE → PAUSED → WAITING → DONE / CANCELLED / ARCHIVE`
- [ ] Habit graph: column 30, preceding 21 days, following 7 days
- [ ] LaTeX fragment scale: 3.5
- [ ] `org-fragtog` auto-renders LaTeX fragments at cursor
- [ ] Zen mode: text-scale 1.0, writeroom-width 80; auto-enabled for `~/Grimoire/Notes/**`
- [ ] Roam capture templates: default + Blog Post (exports to `~/Projects/Personal-Blog/posts/`)
- [ ] Super-agenda groups: Daily Habits (`:tag "Dailies"`), Overdue, Today, Active Research, Waiting On, Inbox, Upcoming/Backlog

### AI / LLM tools
- [ ] `aidermacs`: backend = vterm
- [ ] `minuet` (commented out): Ollama endpoint, `qwen2.5-coder:1.5b` — re-enable when local inference is set up

### EWM input settings
- [ ] Touchpad: `scroll-method = "no-scroll"`, `tap = true`, DWT (disable-while-typing) = true
- [ ] Keyboard: `repeat-delay = 500`

### Misc settings
- [ ] `confirm-kill-emacs = nil`
- [ ] `confirm-kill-processes = nil`
- [ ] `global-visual-line-mode t`
- [ ] `scroll-margin 99999` — typewriter-scroll (cursor stays centered)
- [ ] `read-process-output-max` = 4MB (LSP performance)
- [ ] `corfu-auto-delay = 0.0; corfu-auto-prefix = 1` (instant completion popup)
- [ ] `redisplay-skip-fontification-on-input = t` (responsiveness)
- [ ] `git-auto-commit-mode` debounce 1s, auto-add new files, no auto-push
- [ ] `avy-timeout-seconds = 0.3`
- [ ] `ispell-program-name = "hunspell"`
- [ ] `initial-major-mode = 'org-mode`; scratch buffer blank
- [ ] `fcitx-aggressive-setup` — disables fcitx in evil normal state
- [ ] drawio: executable from PATH; I/O directory `~/Grimoire/Notes/Assets`
- [ ] org-cite bibliography: `~/Grimoire/bibtex.bib`
- [ ] Zotero storage: `~/.zotero/zotero/storage/`
- [ ] Python formatter: `black` (explicit, LSP format disabled for python)

---

## 27. Doom Emacs: `snippets/org-mode/`

- [ ] `ali` — Align Math: `\begin{align*}` block with 2 rows
- [ ] `dm` — Display Math: `\[ ... \]`
- [ ] `fr` — Fraction: `\frac{$1}{$2}`
- [ ] `mb` — Math Block: `$$ ... $$`
- [ ] `<mer` — mermaid: `#+begin_src mermaid :file <name>.svg`
- [ ] `pmat` — Parenthesis Matrix: `\begin{pmatrix}` 2×2
- [ ] `qimg` — Quarto Inline Image: `@@md:![Caption](image.png)@@`

---

## 28. Fonts

All fonts installed system-wide (confirm location in `Tn-desktop` or `Tn-emacs`):

- [ ] `iosevka` — primary monospace
- [ ] `iosevka-comfy` (Comfy Wide Motion variant) — alternative monospace
- [ ] `jetbrains-mono` — used in Emacs (`doom-font`)
- [ ] `sarasa-gothic` — CJK + Latin mixed font
- [ ] `noto-fonts` — Unicode coverage
- [ ] `overpass` — humanist sans
- [ ] `fira-code` — ligature monospace
- [ ] `fira-go` — Fira with extended Latin/Cyrillic
- [ ] `nerdfonts` (symbols-only subset) — icons/glyphs for eza, starship, etc.

---

## 29. Design Decisions to Preserve (or Revisit)

- [ ] **No home-manager** — keep using hjem + hjem-impure; dotfiles go through `environment.etc` (system) or `hjem.users.xin.files` (user). Avoids home-manager activation overhead.
- [ ] **Kanata device list shared across hosts** — `linux-continue-if-no-devs-found yes` makes it non-fatal on Kvasir. Decide: keep shared or split into host overlays.
- [ ] **AppImage blobs committed to repo** (PureRef, Allusion) — no `appimage-run` wrapping; relies on `programs.appimage.binfmt`. Decide: keep blobs in repo or fetch from upstream URL.
- [ ] **EWM as the entire desktop** — Emacs is the compositor, launcher, and app shell. No separate taskbar, status bar, or traditional WM.
- [ ] **All modules imported on both hosts** — no per-host conditional imports; differences are inline in host files. Decide: keep flat or introduce a per-host module selection mechanism.
- [ ] **sops with a single secret** — only `xin-password`; no API keys or SSH private keys managed via sops currently.
- [ ] **git-crypt configured but unused** — `.gitattributes` references `Secrets/` and `*.key` patterns with no matching files. Remove or populate.
- [ ] **Reddit blocked at `/etc/hosts`** — a conscious anti-distraction measure. Keep if still desired.
- [ ] **`nh` hardcoded flake path** — path is `/home/xin/Projects/Technonomicon/` baked into `Tn-nix`. Fine for single-user machines.
- [ ] **Plover installed system-wide** — stenography software in `Tn-desktop`. Consider moving to a dedicated `Tn-steno` module alongside the Javelin udev rules (currently split across `Tn-desktop` and `Tn-learning`).
- [ ] **`minuet` (local LLM completion) commented out** — re-enable once a local Ollama instance is running; uses `qwen2.5-coder:1.5b`.
- [ ] **Wallpaper not managed** — no wallpaper is set via Nix; manage manually or add to config.
- [ ] **OpenSSH configured but disabled** — decide whether to enable remote SSH access.
- [ ] **`kvm-intel`** loaded on both hosts — confirm Kvasir (T480s) actually has a VT-x capable CPU (it does: Intel i5-8250U).
