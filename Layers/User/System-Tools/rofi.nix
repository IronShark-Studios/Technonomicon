{ inputs, outputs, lib, config, pkgs, ... }: {


  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    theme =  "minimal";

    plugins = with pkgs; [
      rofi-emoji
      rofi-calc
      rofi-bluetooth
    ];
  };

  home.file = {
    "rofi-theme" = {
      target = ".config/rofi/minimal.rasi";
      source = ./minimal-rofi.rasi;
    };
  };
}
