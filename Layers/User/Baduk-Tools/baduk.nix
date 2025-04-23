{ inputs, outputs, lib, config, pkgs, ... }:

let
  sabaki = pkgs.callPackage (import ./sabaki.nix) {};
  fox = pkgs.callPackage (import ./minifox.nix) {};


in {

  imports = [
  ];

  home.packages = with pkgs; [
     sabaki
     katagoCPU
     fox
     pipx
    ];
}
