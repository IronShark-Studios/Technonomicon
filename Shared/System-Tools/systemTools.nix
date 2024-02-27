{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./Blueman/blueman.nix
    ./Flameshot/flameshot.nix
    ./Polybar/polybar.nix
    ./Thunar/thunar.nix
    ./Plover/plover.nix
  ];
}
