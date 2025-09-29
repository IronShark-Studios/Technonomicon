{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./blueman.nix
    ./thunar.nix
    ./rofi.nix
  ];

  home.file = {
    "fcitx5-config" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Projects/Technonomicon/Layers/User/System-Tools/fcitx5-config";
      target = ".config/fcitx5/config";
    };
    "gromit-mpx-config" = {
      source = ./gromit-mpx.cfg;
      target = ".config/gromit-mpx.cfg";
      force = true;
    };
    "gromit-mpx-ini" = {
      source = ./gromit-mpx.ini;
      target = ".config/gromit-mpx.ini";
      force = true;
    };
  };

}
