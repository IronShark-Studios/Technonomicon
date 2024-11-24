{ inputs, outputs, lib, config, pkgs, ... }:

let
  sabaki = pkgs.callPackage (import ./sabaki.nix) {};

in {

  imports = [
  ];

  home.packages = with pkgs; [
     sabaki
     katago
     katagoCPU
    ];
}
