{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./blueman.nix
    ./thunar.nix
    ./plover.nix
    ./rofi.nix
  ];
}
