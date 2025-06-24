{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./blueman.nix
    ./thunar.nix
    ./rofi.nix
  ];

  home.file = {
    "fcitx5-config" = {
      source = ./fcitx5-config;
      target = ".config/fcitx5/config";
    };
  };

}
