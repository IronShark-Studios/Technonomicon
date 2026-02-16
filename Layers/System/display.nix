{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      sddm-chili-theme
      xorg.libxshmfence
      hyprcursor
      # hyprlandPlugins.hypr-dynamic-cursors
      gnome-network-displays
      greetd.tuigreet
    ];
  };

  programs = {
    hyprland.enable = true;
    dconf.enable = true;
    zsh.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  services = {
    blueman.enable = true;
    udisks2.enable = true;
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

    greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --asterisks
          --remember --cmd Hyprland";
          user = "greeter";
        };
      };
    };

    kanata = {
      enable = true;
      package = pkgs.kanata-with-cmd;
      keyboards.colmacs.configFile = ./config.kbd;
    };
  };

  hardware = {
    bluetooth.enable = true;
    graphics.enable = true;
    xpadneo.enable = true;
    sane.enable = true;
  };
}
