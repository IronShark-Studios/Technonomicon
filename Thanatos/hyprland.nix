{ inputs, outputs, lib, config, pkgs, ... }: {

  home.file = {
    "hyprland.conf" = {
      target = ".config/hypr/hyprland.conf";
      source = ./hyprland.conf;
    };
  };

  home.packages = with pkgs; [
    mako
    waylock
    hyprshot
    hyprpicker
    wl-clipboard
    wtype
    kitty
  ];
}
