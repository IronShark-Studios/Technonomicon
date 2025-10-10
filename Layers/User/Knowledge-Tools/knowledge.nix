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

  home.file."obsidian-journal-archiver" = {
    source = ./journal-archiver.sh;
    target = ".config/obsidian/journal-archiver.sh";
  };

      home.file."Zotero-Configuration" = {
      target = ".zotero";
      source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Projects/Technonomicon/Layers/Secrets/Zotero";
    };
}
