{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./Blueman/blueman.nix
    ./Thunar/thunar.nix
    ./Plover/plover.nix
    ./waybar.nix
    ./waypaper.nix
    ./rofi.nix
  ];
}
