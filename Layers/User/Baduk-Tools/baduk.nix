{ inputs, outputs, lib, config, pkgs, ... }:

let
  sabaki = pkgs.callPackage (import ./sabaki.nix) {};
  fox = pkgs.callPackage (import ./weiqi-hub.nix) {};


in {

  imports = [
  ];

  home.packages = with pkgs; [
     sabaki
     sgfutils
     katagoCPU
     fox
     pipx
     lutris
     geckodriver #used for lutris-fox
    ];


    home.file = {
      "sabaki-rofi" = {
        target = ".local/share/applications/sabaki.desktop";
        text = ''
          #!/usr/bin/env xdg-open
          [Desktop Entry]
          Version=1.0
          Terminal=false
          Type=Application
          Name=Sabaki
	        Icon=.local/share/applications/sabaki.png
          Exec=/home/xin/.nix-profile/bin/sabaki
        '';
      };
      "sabaki-icon" = {
        target = ".local/share/applications/sabaki.png";
	source = ./sabaki.png;
      };
      "fox-rofi" = {
        target = ".local/share/applications/fox.desktop";
        text = ''
          #!/usr/bin/env xdg-open
          [Desktop Entry]
          Version=1.0
          Terminal=false
          Type=Application
          Name=Fox
          Exec=/home/xin/.nix-profile/bin/fox
        '';
      };
    };
}
