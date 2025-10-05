{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
  ];

  home.packages = with pkgs; [
    obsidian
    anki
    zotero
    rclone
    zathura
    libation
    mpv
    ];

  xdg.configFile."mpv/scripts".source = ./MPV-Scripts;
  xdg.configFile."mpv/script-opts".source = ./MPV-Script-Options;
}
