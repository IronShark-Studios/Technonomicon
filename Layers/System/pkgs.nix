{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      wget
      unzip
      alsa-utils
      zsh-command-time
      wl-clipboard
      nix-ld 
    ];
  };

  fonts.packages = with pkgs; [
    noto-fonts
    nerd-fonts.symbols-only
    iosevka
    iosevka-comfy.comfy-wide-motion
    iosevka-comfy.comfy-wide-motion-duo
    sarasa-gothic
    overpass
    fira-code
    fira-go
  ];

  xdg.mime.defaultApplications = {
    "application/pdf" = "firefox.desktop";
  };

  programs.steam = {
    enable = true;
  };

  programs.ydotool = {
    enable = true;
  };

  programs.appimage = {
  enable = true;
  binfmt = true;
  package = pkgs.appimage-run.override {
    extraPkgs = pkgs:
      with pkgs; [
        libepoxy
        brotli
        xdg-user-dirs
      ];
    };
  };
}
