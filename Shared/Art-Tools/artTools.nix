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
  ];

  home.packages = with pkgs; [
    pureref
    allusion
    anki
    ];
}
