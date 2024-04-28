{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      xfce.xfce4-genmon-plugin
      networkmanagerapplet
      sddm-chili-theme
      pavucontrol
      xorg.xev
      gparted
      xdotool
      pnmixer
      udiskie
      xcolor
      slock
      xclip
      xsel
      xdo
    ];
  };

  programs = {
    dconf.enable = true;
    zsh.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-media-tags-plugin
        thunar-volman
      ];
    };

    hyprland.enable = true;
    kitty.enable = true;
    rofi-wayland.enable = true;
  };

  # security.pam.services.gdm.enableGnomeKeyring = true;

  services = {
    blueman.enable = true;
    gnome.gnome-keyring.enable = true;

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
    };

    xserver = {
      enable = true;
      libinput.enable = true;
      autorun = true;
      layout = "us";
      xkbOptions = "caps:escape";
      videoDrivers = [
        "modesetting"
        "nvidia"
      ];

      excludePackages = with pkgs; [
        xterm
      ];

      displayManager = {

        sddm = {
          enable = true;
          autoNumlock = true;
          theme = "chili";
        };
      };

      # desktopManager.enlightenment = {
      #   enable = true;
      # };
    };

    # unclutter-xfixes = {
    #   enable = true;
    #   threshold = 10;
    #   timeout = 1;
    # };

    # picom = {
    #   enable = true;
    #   vSync = true;
    #   backend = "glx";
    # };
  };

  sound = {
    enable = true;
    mediaKeys.enable = true;
  };

  hardware = {
    pulseaudio.enable = false;
    bluetooth.enable = true;

    nvidia = {
      modesetting.enable = true;
      prime = {
        sync.enable = true;
        nvidiaBusId = "PCI:01:00:0";  # Found with lspci | grep VGA
        intelBusId = "PCI:00:02:0";  # Found with lspci | grep VGA
      };
    };
  };
}
