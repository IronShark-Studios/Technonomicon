{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.bash = {
    enable = true;
  };

  home.sessionPath = [
  "$HOME/.emacs.d/bin"
  "$HOME/.nix-profile/bin/sabaki"
  ];

  home.packages = with pkgs; [
    dash
  ];
}
