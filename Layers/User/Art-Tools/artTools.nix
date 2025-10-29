{ inputs, outputs, lib, config, pkgs, ... }:

let
  pureref = pkgs.callPackage (import ./PureRef/pureref.nix) {};
  allusion = pkgs.callPackage (import ./Allusion/allusion.nix) {};

in {

  imports = [
    ./Graphviz/graphviz.nix
    ./Cura/cura.nix
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

    "Allusion" = {
      target = ".local/share/applications/allusion.desktop";
      text = ''
        #!/usr/bin/env xdg-open
        [Desktop Entry]
        Version=1.0
        Terminal=false
        Type=Application
        Name=Allusion
        Icon=.local/share/applications/allusion.png
        Exec=/home/xin/.nix-profile/bin/allusion
      '';
    };

    "Allusion-icon" = {
      target = ".local/share/applications/allusion.png";
      source = ./Allusion/allusion-icon.png;
    };

    "PureRef" = {
      target = ".local/share/applications/pureref.desktop";
      text = ''
        #!/usr/bin/env xdg-open
        [Desktop Entry]
        Version=1.0
        Terminal=false
        Type=Application
        Name=PureRef
        Icon=.local/share/applications/pureref.png
        Exec=/home/xin/.nix-profile/bin/pureref
      '';
    };

    "pureref-icon" = {
      target = ".local/share/applications/pureref.png";
      source = ./PureRef/pureref-icon.png;
    };
  };
}
