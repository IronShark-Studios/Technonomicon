{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.alacritty = {
    enable = true;
    settings = {
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
  ];
}
