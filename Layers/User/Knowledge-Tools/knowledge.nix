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
    pdfannots2json #needed by obsidian
    pomodoro-gtk
    blanket
    ];

  xdg.configFile."mpv/scripts".source = ./MPV-Scripts;
  xdg.configFile."mpv/script-opts".source = ./MPV-Script-Options;

  home.file = { 
    "Zotero-User-Configuration" = {
      target = ".zotero/zotero/profiles.ini";
      source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Grimoire/.Zotero/profiles.ini";
    };

    "Zotero-User-Prefs" = {
      target = ".zotero/zotero/1qdyyx20.default/prefs.js";
      source = config.lib.file.mkOutOfStoreSymlink
      "/home/xin/Grimoire/.Zotero/prefs.js";
    };
  };
}
