{ inputs, outputs, lib, config, pkgs, ... }: {

  wayland.windowManager.hyprland.extraConfig = builtins.readFile ./hyprland.conf;

  home.file = {
    # "hyprland.conf" = {
    #   target = ".config/hypr/hyprland.conf";
    #   source = ./hyprland.conf;
    # };

    "hyprland-start-up" = {
      target = ".config/hypr/hyprland-start-up.conf";
      source = ./hyprland-start-up.conf;
    };
  };

  home.packages = with pkgs; [
    mako
    waylock
    hyprshot
    hyprpicker
    wtype
    kitty
    brightnessctl
    gromit-mpx
  ];
}
