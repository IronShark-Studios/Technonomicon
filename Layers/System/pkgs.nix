{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      wget
      unzip
      alsa-utils
      zsh-command-time
      wl-clipboard
      nix-ld 
      kdePackages.skanlite
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
    "text/pdf" = "org.qutebrowser.qutebrowser.desktop";
    "text/html" = "org.qutebrowser.qutebrowser.desktop";
    "x-scheme-handler/http" = "org.qutebrowser.qutebrowser.desktop";
    "x-scheme-handler/https" = "org.qutebrowser.qutebrowser.desktop";
    "x-scheme-handler/about" = "org.qutebrowser.qutebrowser.desktop";
    "x-scheme-handler/mailto" = "thunderbird.desktop";
  };

  hardware.sane = {
    enable = true;
    extraBackends = [ pkgs.sane-airscan ];
  };

  services.avahi = {
  enable = true;
  nssmdns = true;
  openFirewall = true;
  };

  services.vikunja = {
    enable = true;
    frontendScheme = "http";
    frontendHostname = "Thanatos";
    settings = {
      service = {
        filespath = "/home/xin/.config/vikunja-data";
      };
    };
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
