# Technonomicon: Personal NixOS & Home Manager Configurations

## Project Overview
Technonomicon is a comprehensive, Flake-based NixOS configuration repository for managing personal computers. It leverages a modular architecture to provide a consistent environment across multiple hosts while allowing for hardware-specific customizations.

### Main Technologies
- **NixOS & Nix Flakes:** Core system configuration and dependency management.
- **Home Manager:** User-level environment and application management, integrated into the NixOS configuration.
- **Hyprland:** A dynamic tiling Wayland compositor used as the primary desktop environment.
- **ZSH / Starship / Alacritty:** The primary terminal stack.
- **Emacs (Doom) & Neovim (LazyVim):** Preferred text editors.
- **Brave / Nyxt:** Web browsers with specialized configurations (e.g., Vimium, Surfingkeys).
- **Plover:** Open-source stenography software.
- **Baduk (Go) Tools:** Specialized setup for Go players, including Sabaki, Katago, and Fox Weiqi.
- **AI Tools:** Integrated support for local LLMs and audio processing (Ollama, aichat, Whisper, Kokoro).

## Architecture
The repository is organized into several key directories:
- **`flake.nix`**: The entry point for the entire configuration, defining inputs and host-specific outputs.
- **`Akmon/` & `Kvasir/`**: Contains host-specific configurations (`configuration.nix`, `hardware-configuration.nix`, `xin-home.nix`).
- **`Layers/`**: Reusable modules categorized by function:
    - **`System/`**: Core NixOS settings (Networking, Display, Pkgs).
    - **`User/`**: Home Manager modules (Terminal, Web-Tools, Art-Tools, etc.).
    - **`Scripts/`**: Custom maintenance and utility scripts.
    - **`Secrets/`**: Hashed passwords and sensitive data (referenced via Nix but not stored in plain text).
- **`Flake/`**: Infrastructure-level definitions including custom overlays, modules, and packages.

## Building and Maintenance
The system provides a custom management command `Tn` (defined in `Layers/Scripts/Active/system-scripts.nix`) for common operations.

### Key Commands
- **Rebuild System:** `sudo nixos-rebuild switch --flake .#$HOSTNAME` (or use `Tn rebuild`).
- **Test Configuration:** `sudo nixos-rebuild test --flake .#$HOSTNAME` (or use `Tn test`).
- **Upgrade System:** `nix flake update` followed by a rebuild (or use `Tn upgrade`).
- **Garbage Collection:** `nix-collect-garbage -d` (or use `Tn clean`).

### Rebuild Script Workflow (`Tn rebuild`)
1. Changes into the project directory.
2. Stages all changes (`git add .`).
3. Prompts for a change log message.
4. Executes `nixos-rebuild switch`.
5. Commits and pushes the changes to the repository.

## Development Conventions
- **Modular Imports:** Use the `Layers` directory for sharing logic between hosts. Host-specific overrides should live in their respective host directories.
- **Impure Rebuilds:** The custom rebuild scripts use the `--impure` flag, likely to handle local file references or environment variables.
- **Secret Management:** Sensitive files are expected to be present in `Secrets/` directories or referenced via `/etc/secrets/`.
- **Formatting:** Adhere to standard Nix formatting (usually `nixpkgs-fmt` or `alejandra` if used, though not explicitly seen, the existing style is consistent).
- **Git Flow:** The system is designed to be version-controlled; rebuilds are coupled with git commits.
