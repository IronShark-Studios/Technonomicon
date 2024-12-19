{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      wget
      unzip
      alsa-utils
      zsh-command-time
    ];
  };

  fonts.packages = with pkgs; [
    nerd-fonts
    iosevka
    iosevka-comfy.comfy-wide-motion
    iosevka-comfy.comfy-wide-motion-duo
    sarasa-gothic
    overpass
    fira-code
    fira-go
  ];
}
