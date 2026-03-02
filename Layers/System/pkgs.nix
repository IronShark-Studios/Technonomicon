{ inputs, outputs, lib, config, pkgs, ... }: {

  environment = {
    systemPackages = with pkgs; [
      wget
      adwaita-icon-theme
      gnome-themes-extra
      glib
      unzip
      alsa-utils
      zsh-command-time
      wl-clipboard
      nix-ld 
      kdePackages.skanlite
      vscodium-fhs
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

  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
    host = "0.0.0.0";
    port = 11434;
    environmentVariables = {
      OLLAMA_KEEP_ALIVE = "5m";
      OLLAMA_ORIGINS = "*";
    };
  };

  services.open-webui = {
    enable = true;
    port = 8180;
    environment = {
      OLLAMA_API_BASE_URL = "http://127.0.0.1:11434";
    };
  };

  services.vikunja = {
    enable = false;
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
