{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./blueman.nix
    ./thunar.nix
    ./rofi.nix
  ];
}
