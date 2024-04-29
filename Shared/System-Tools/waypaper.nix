{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      waypaper
      swww
    ];

    file."config.ini" = {
      target = ".config/waypaper/config.ini";
      text = ''
        [Settings]
        language = en
        wallpaper = ~/Projects/Technonomicon/Media/zdzislaw_beksinski_cathedral-wallpaper-2560x1440.jpg
        backend = swww
        monitors = All
        fill = Fill
        sort = name
        color = #ffffff
      '';
    };
  };
}
