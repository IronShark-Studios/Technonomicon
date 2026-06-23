{ inputs, ... }: {
  flake.nixosModules.Tn-desktop = { pkgs, pkgs-stable, config, ... }: {

    hardware = {
      bluetooth.enable  = true;
      graphics.enable   = true;
      xpadneo.enable    = true;
      sane.enable       = true;
      sane.extraBackends = [ pkgs.sane-airscan ];
    };

    services = {
      libinput = {
        enable = true;
        touchpad = {
          tappingDragLock   = false;
          middleEmulation   = false;
        };
      };
      gnome.gnome-keyring.enable = true;
      pulseaudio.enable = false;
      pipewire = {
        enable = true;
        pulse.enable = true;
        alsa = {
          enable       = true;
          support32Bit = true;
        };
      };
      logind.settings.Login.HandleSuspend = "ignore";
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
      julia-mono
      cm-unicode
    ];

    xdg.mime.defaultApplications = {
      "application/pdf"        = "sioyek.desktop";
      "text/html"              = "brave-browser.desktop";
      "application/xhtml+xml" = "brave-browser.desktop";
      "x-scheme-handler/http"    = "brave-browser.desktop";
      "x-scheme-handler/https"   = "brave-browser.desktop";
      "x-scheme-handler/about"   = "brave-browser.desktop";
      "x-scheme-handler/unknown" = "brave-browser.desktop";
      "x-scheme-handler/mailto"  = "brave-browser.desktop";
    };

    services.udev.extraRules = ''
      KERNEL=="ttyACM[0-9]*", MODE="0666"
      KERNEL=="ttyUSB[0-9]*", MODE="0666"
      KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput"
    '';

    xdg.portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
      ];
      configPackages = [ pkgs.xdg-desktop-portal-hyprland ];
    };

    programs.steam.enable   = true;
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
            gtk-theme    = "Adwaita-dark";
          };
          "org/virt-manager/virt-manager/connections" = {
            autoconnect = [ "qemu:///system" ];
            uris        = [ "qemu:///system" ];
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
      "xdg/gromit-mpx.cfg".source = "${inputs.self}/Modules/Core/_gromit-mpx.cfg";
      "xdg/gromit-mpx.ini".source = "${inputs.self}/Modules/Core/_gromit-mpx.ini";
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

    environment.systemPackages = with pkgs; [
      gromit-mpx
      brightnessctl
      gnome-themes-extra
      adwaita-icon-theme
      kdePackages.skanlite
      blueman
      pavucontrol

      inputs.plover-flake.packages.${pkgs.stdenv.hostPlatform.system}.plover-full
    ];
  };
}
