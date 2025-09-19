{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.bash = {
    enable = true;
  };

  home.sessionPath = [
  ];

  home.packages = with pkgs; [
    dash
  ];
}
