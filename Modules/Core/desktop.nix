{ inputs, ... }: {
  flake.nixosModules.desktop-feature = { pkgs, pkgs-stable, config, ... }: {

    imports = [ inputs.ewm.nixosModules.default ];
    programs.ewm.enable = true;

    services = {

      greetd = {
        enable = true;
        settings = {
          default_session = {
            command = "${pkgs.tuigreet}/bin/tuigreet --time --asterisks --remember --sessions ${config.services.displayManager.sessionData.desktops}/share/wayland-sessions";
            user = "greeter";
          };
        };
      };

      kanata = {
        enable = true;
        package = pkgs.kanata-with-cmd;
        keyboards.colmacs.configFile = ./_kanata.kbd;
      };
    };

    systemd.services.greetd.serviceConfig = {
      Type = "idle";
      TTYReset = true;
      TTYVHangup = true;
      TTYVTDisallocate = true;
    };

    fonts.packages = with pkgs; [
      iosevka
      iosevka-comfy.comfy-wide-motion
      iosevka-comfy.comfy-wide-motion-duo
      nerd-fonts.symbols-only
      jetbrains-mono
      sarasa-gothic
      noto-fonts
      overpass
      fira-code
      fira-go
    ];

    environment.sessionVariables = {
      # Forces Chromium/Electron apps (like Brave, VS Code, Discord) to use Wayland
      NIXOS_OZONE_GH_WAYLAND = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";

      # Forces Qt apps (like Anki) to use Wayland
      QT_QPA_PLATFORM = "wayland";
    };

    environment.systemPackages = with pkgs; [
      alacritty
      wl-clipboard
      wiremix
    ];

  };
}
