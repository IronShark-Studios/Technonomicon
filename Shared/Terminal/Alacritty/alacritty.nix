{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.alacritty = {
    enable = true;
    settings = {
    };
  };

  home.packages = with pkgs; [
    btop
    htop
    nmon
    kmon
    fzf
    rsync
    zoxide
    neofetch
  ];
}
