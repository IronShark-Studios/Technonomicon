{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.alacritty = {
    enable = true;
    settings = {
    };
  };

  home.packages = with pkgs; [
    fzf
    btop
    htop
    nmon
    kmon
    rsync
    zoxide
    gparted
    pciutils
    fastfetch
    udiskie
    trash-cli
  ];
}
