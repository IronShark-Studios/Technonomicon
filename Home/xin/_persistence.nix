{ inputs, ... }: {
  imports = [ inputs.impermanence.homeManagerModules.impermanence ];

  home.persistence."/persist/home/xin" = {
    allowOther = true;
    directories = [
      "Projects"
      "Grimoire"
      "Downloads"
      "Archive"
      "Media"
      "GDrive"
      ".ssh"
      ".gnupg"
      ".config/BraveSoftware"
      ".config/syncthing"
      ".config/obsidian"
      ".config/hypr"
      ".config/aerc"
      ".config/notmuch"
      ".config/rclone"
      ".config/yazi"
      ".local/share/nvim"
      ".local/share/task"
      ".local/share/timew"
      ".local/share/zoxide"
      ".local/share/mail"
      ".local/share/vdirsyncer"
      ".local/share/calendars"
      ".local/share/dijo"
      ".local/share/copyq"
      ".arbtt"
      ".zotero"
      ".config/zotero"
      ".xonsh"
    ];
    files = [
      ".config/mimeapps.list"
    ];
  };
}
