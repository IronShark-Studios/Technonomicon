{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.alacritty = {
    enable = true;
    settings = {
    };
  };

  home.file = {
    "alacritty.toml" = {
      target = ".config/alacritty/alacritty.toml";
      source = ./alacritty.toml;
    };

    "theme.toml" = {
      target = ".config/alacritty/theme.toml";
      source = ./theme.toml;
    };

    "bartib-completion" = {
      target = ".config/Bartib/bartib-completion";
      source = ./bartib-completion;
    };

    "bartib-menu" = {
      target = ".config/Bartib/bartib-menu.sh";
      source = ./bartib-menu.sh;
    };

    "bartib-fava" = {
      target = ".config/Bartib/time-tracking.bean";
      source = ../../../Secrets/time-tracking.bean;
    };
  };

  home.packages = with pkgs; [
    htop-vim
    nmon
    kmon
    rsync
    zoxide
    gparted
    pciutils
    fastfetch
    udiskie
    trash-cli
    ripgrep
    ripgrep-all
    fd
    eza
    entr
    progress
    copyq
    qalculate-gtk
    wally-cli
    espeak
    lazygit
    gcc
    zip
    ranger
    caligula
    bartib
    gum
    sc-im
    gh
    glab
    jq
    yq
    dysk
    pastel
    gnumake
    gemini-cli
    usbutils
  ];
}
