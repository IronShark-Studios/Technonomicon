{ inputs, ... }: {
  flake.nixosModules.Tn-desktop = { pkgs, pkgs-stable, config, ... }: {

    imports = [ inputs.ewm.nixosModules.default ];
    programs.ewm.enable = true;

    hardware = {
      bluetooth.enable = true;
      graphics.enable = true;
      xpadneo.enable = true;
      sane.enable = true;
      sane.extraBackends = [ pkgs.sane-airscan ];
    };

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

      libinput.enable = true;
      gnome.gnome-keyring.enable = true;
      pulseaudio.enable = false;
      pipewire = {
        enable = true;
        pulse.enable = true;
        alsa = {
          enable = true;
          support32Bit = true;
        };
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

    xdg.mime.defaultApplications = {
      "application/pdf" = "sioyek.desktop";
      "text/html" = "brave-browser.desktop";
      "application/xhtml+xml" = "brave-browser.desktop";
      "x-scheme-handler/http" = "brave-browser.desktop";
      "x-scheme-handler/https" = "brave-browser.desktop";
      "x-scheme-handler/about" = "brave-browser.desktop";
      "x-scheme-handler/unknown" = "brave-browser.desktop";
      "x-scheme-handler/mailto" = "brave-browser.desktop";
    };

    services.udev.extraRules = ''
      KERNEL=="ttyACM[0-9]*", MODE="0666"
      KERNEL=="ttyUSB[0-9]*", MODE="0666"
      KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput"
    '';

    security.pam.services.swaylock = {};

    environment.sessionVariables = {
      NIXOS_OZONE_GH_WAYLAND = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      QT_QPA_PLATFORM = "wayland";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      NIXPKGS_ALLOW_UNFREE = "1";
    };

    environment.systemPackages = with pkgs; [
      mako
      grim
      slurp
      wtype
      blueman
      swaylock
      alsa-utils
      gromit-mpx
      pavucontrol
      wl-clipboard
      brightnessctl
      gnome-themes-extra
      adwaita-icon-theme
      kdePackages.skanlite

      inputs.plover-flake.packages.${pkgs.stdenv.hostPlatform.system}.plover-full
    ];

    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      configPackages = [ pkgs.xdg-desktop-portal-gtk ];
    };

    programs.steam.enable = true;
    programs.ydotool.enable = true;

    programs.appimage = {
      enable = true;
      binfmt = true;
      package = pkgs.appimage-run.override {
        extraPkgs = pkgs: with pkgs; [
          libepoxy
          brotli
          xdg-user-dirs
        ];
      };
    };

    programs.dconf = {
      enable = true;
      profiles.user.databases = [{
        settings = {
          "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
            gtk-theme = "Adwaita-dark";
          };
          "org/virt-manager/virt-manager/connections" = {
            autoconnect = [ "qemu:///system" ];
            uris = [ "qemu:///system" ];
          };
        };
      }];
    };

    environment.etc = {
      "xdg/user-dirs.defaults".text = ''
        DESKTOP=Archive
        DOWNLOAD=Downloads
        TEMPLATES=Projects
        PUBLICSHARE=Projects
        DOCUMENTS=Media
        MUSIC=Media
        PICTURES=Media
        VIDEOS=Media
      '';
      "xdg/fcitx5/config".source = ./_fcitx5-config;

      "xdg/gromit-mpx.cfg".source = ./_gromit-mpx.cfg;
      "xdg/gromit-mpx.ini".source = ./_gromit-mpx.ini;

      "gtk-3.0/settings.ini".text = ''
        [Settings]
        gtk-theme-name=Adwaita-dark
        gtk-application-prefer-dark-theme=1
      '';
      "gtk-4.0/settings.ini".text = ''
        [Settings]
        gtk-theme-name=Adwaita-dark
        gtk-application-prefer-dark-theme=1
      '';
    };

    networking.modemmanager.enable = false;
    systemd.sleep.settings.Sleep = {
      HandleSuspend = "ignore";
    };

  };
}
