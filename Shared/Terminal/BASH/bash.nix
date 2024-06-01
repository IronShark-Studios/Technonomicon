{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.bash = {
    enable = true;
  };

  home.packages = with pkgs; [
    dash
  ];
}
