{ inputs, outputs, lib, config, pkgs, ... }:

let
  obsidian = pkgs.callPackage (import ./Obsidian/obsidian.nix) {};

in {

  imports = [
  ];

  home.packages = with pkgs; [
    obsidian
    anki
    zotero
    rclone
    ];
}
