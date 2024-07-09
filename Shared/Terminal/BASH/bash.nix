{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.bash = {
    enable = true;
  };

  home.sessionPath = [
  "$HOME/.emacs.d/bin"
  ];

  home.packages = with pkgs; [
    dash
  ];
}
