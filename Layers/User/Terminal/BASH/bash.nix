{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.bash = {
    enable = true;
  };

  home.sessionPath = [
  ".npm_packages"
  ];

  home.packages = with pkgs; [
    dash
  ];
}
