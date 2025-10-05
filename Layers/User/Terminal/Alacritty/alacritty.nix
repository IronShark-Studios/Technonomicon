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
  ];
}
