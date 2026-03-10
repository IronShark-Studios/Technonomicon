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
    aria2
    pdfannots2json #needed by obsidian
    pomodoro-gtk
    sox
    wl-kbptr
    (blanket.overrideAttrs (oldAttrs: {
      postInstall = (oldAttrs.postInstall or "") + ''
        wrapProgram $out/bin/blanket \
          --set GTK_THEME "Adwaita:dark"
      '';
    }))
    ];

  xdg.configFile."mpv/scripts".source = ./MPV-Scripts;
  xdg.configFile."mpv/script-opts".source = ./MPV-Script-Options;
  xdg.configFile."wl-kbptr".source = ./wl-kbptr;
  xdg.configFile."lsp-ai/config.json".text = builtins.toJSON {
    memory = {
      file_store = {};
    };
    models = {
      my-local-copilot = {
        type = "ollama";
        model = "qwen2.5-coder:7b"; # Keep the 7B here for speed!
        chat_endpoint = "http://localhost:11434/api/chat";
      };
    };
    completion = {
      model = "my-local-copilot";
      parameters = {
        max_tokens = 64;
      };
    };
  };

  # home.file = { 
  #   "Zotero-User-Configuration" = {
  #     target = ".zotero/zotero/profiles.ini";
  #     source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Grimoire/.Zotero/profiles.ini";
  #   };

  #   "Zotero-User-Prefs" = {
  #     target = ".zotero/zotero/1qdyyx20.default/prefs.js";
  #     source = config.lib.file.mkOutOfStoreSymlink
  #     "/home/xin/Grimoire/.Zotero/prefs.js";
  #   };
  # };
}
