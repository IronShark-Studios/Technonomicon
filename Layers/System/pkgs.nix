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
      aider-chat
      aichat
      lsp-ai
    ];
  };

  fonts.packages = with pkgs; [
    noto-fonts
    nerd-fonts.symbols-only
    iosevka
    iosevka-comfy.comfy-wide-motion
    iosevka-comfy.comfy-wide-motion-duo
    jetbrains-mono
    sarasa-gothic
    overpass
    fira-code
    fira-go
  ];

  xdg.mime.defaultApplications = {
    "application/pdf" = "brave-browser.desktop";
    "text/html" = "brave-browser.desktop";
    "application/xhtml+xml" = "brave-browser.desktop";
    "x-scheme-handler/http" = "brave-browser.desktop";
    "x-scheme-handler/https" = "brave-browser.desktop";
    "x-scheme-handler/about" = "brave-browser.desktop";
    "x-scheme-handler/unknown" = "brave-browser.desktop";
    "x-scheme-handler/mailto" = "brave-browser.desktop";
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
      OLLAMA_KEEP_ALIVE = "10m";
      OLLAMA_ORIGINS = "*";
    };
    loadModels = [
      "mixtral"
      "deepseek-r1:32b"
      "qwen2.5-coder:32b-instruct"
      "qwen2.5-coder:1.5b"
      "qwen2.5-coder:14b"
      "qwen2.5-coder:7b"
    ];
  };

  services.open-webui = {
    enable = true;
    port = 8180;
    environment = {
      OLLAMA_API_BASE_URL = "http://127.0.0.1:11434";
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
