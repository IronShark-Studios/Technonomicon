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
}
