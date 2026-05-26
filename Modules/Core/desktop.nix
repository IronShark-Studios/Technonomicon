{ inputs, ... }: {
  flake.nixosModules.Tn-desktop = { pkgs, pkgs-stable, config, ... }: {

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
      NIXOS_OZONE_GH_WAYLAND = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      QT_QPA_PLATFORM = "wayland";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      NIXPKGS_ALLOW_UNFREE = "1";
    };

    environment.systemPackages = with pkgs; [
      wl-clipboard
    ];

    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      configPackages = [ pkgs.xdg-desktop-portal-gtk ];
    };

    environment.etc."xdg/user-dirs.defaults".text = ''
      DESKTOP=Archive
      DOWNLOAD=Downloads
      TEMPLATES=Projects
      PUBLICSHARE=Projects
      DOCUMENTS=Media
      MUSIC=Media
      PICTURES=Media
      VIDEOS=Media
    '';
  };
}
