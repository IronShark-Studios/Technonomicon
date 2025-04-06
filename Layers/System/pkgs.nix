{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      wget
      unzip
      alsa-utils
      zsh-command-time
      wl-clipboard
    ];
  };

  fonts.packages = with pkgs; [
    nerd-fonts.symbols-only
    iosevka
    iosevka-comfy.comfy-wide-motion
    iosevka-comfy.comfy-wide-motion-duo
    sarasa-gothic
    overpass
    fira-code
    fira-go
  ];

  programs.steam = {
    enable = true;
  };

  programs.ydotool = {
    enable = true;
  };
}
