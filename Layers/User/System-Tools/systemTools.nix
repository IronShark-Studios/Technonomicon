{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./blueman.nix
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

  home.packages = with pkgs; [
    nemo-with-extensions
  ];

  dconf.settings = {
    "org/nemo/preferences" = {
      show-hidden-files = true;
      always-use-browser-view = true;
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark"; # Or your preferred dark theme like "Arc-Dark"
      package = pkgs.gnome-themes-extra;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };

}
