{ inputs, outputs, lib, config, pkgs, ... }:

let
  pureref = pkgs.callPackage (import ./PureRef/pureref.nix) {};
  allusion = pkgs.callPackage (import ./Allusion/allusion.nix) {};

in {

  imports = [
    ./Graphviz/graphviz.nix
  #  ./Cura/cura.nix   # 20241101 package currently broken
    ./OBS/obs.nix
    ./OpenSCAD/openscad.nix
    ./Inkscape/inkscape.nix
    ./Krita/krita.nix
    ./Blender/blender.nix
    ./Gimp/gimp.nix
    ./Programming/programming.nix
  ];

  home.packages = with pkgs; [
    pureref
    allusion
    yt-dlp
    ffmpeg
    wl-color-picker
    ];

  home.file = {
    "wl-color-picker" = {
      target = ".local/share/applications/wl-color-picker.desktop";
      text = ''
        #!/usr/bin/env xdg-open
        [Desktop Entry]
        Version=1.0
        Terminal=false
        Type=Application
        Name=Color Picker
        Icon=.local/share/applications/color-picker.png
        Exec=/home/xin/.nix-profile/bin/wl-color-picker
      '';
    };

    "wl-color-picker-icon" = {
      target = ".local/share/applications/color-picker.png";
      source = ./color-picker.png;
    };
  };
}
