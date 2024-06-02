{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.alacritty = {
    enable = true;
    settings = {
    };
  };

  home.packages = with pkgs; [
    ptop
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
  ];
}
