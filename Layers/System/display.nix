{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      sddm-chili-theme
      xorg.libxshmfence
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

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      autoNumlock = true;
      theme = "chili";
    };
  };

  hardware = {
    bluetooth.enable = true;
    graphics.enable = true;
    xpadneo.enable = true;
  };
}
