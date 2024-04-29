{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./Blueman/blueman.nix
    ./Flameshot/flameshot.nix
    ./Thunar/thunar.nix
    ./Plover/plover.nix
    ./waybar.nix
    ./waypaper.nix
  ];
}
