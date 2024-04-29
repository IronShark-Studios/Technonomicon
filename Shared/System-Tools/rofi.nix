{ inputs, outputs, lib, config, pkgs, ... }: {


  home = {
    packages = with pkgs; [
      rofi-wayland
    ];

    file."rofi-config" = {
      target = ".config/rofi/config.rasi";
      text = ''
        configuration {
        }
        @theme "Arthur"
      '';
    };
  };
}
