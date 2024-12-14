{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
  ];

  home.packages = with pkgs; [
    obsidian
    anki
    zotero
    rclone
    zathura
    ];
}
