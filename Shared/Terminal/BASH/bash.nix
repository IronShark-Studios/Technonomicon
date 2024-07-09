{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.bash = {
    enable = true;
  };

  home.sessionPath = [
  "$HOME/.config/emacs/bin"
  ];

  home.packages = with pkgs; [
    dash
  ];
}
