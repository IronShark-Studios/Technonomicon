{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
  ];

  home.packages = with pkgs; [
  ];

  programs.nyxt = {
    enable = true;

    package = pkgs.symlinkJoin {
      name = "nyxt-wayland-wrapped";
      paths = [ pkgs.nyxt ];
      buildInputs = [ pkgs.makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/nyxt \
          --set WEBKIT_DISABLE_COMPOSITING_MODE 1 \
          --set GTK_THEME Adwaita:dark
      '';
    };
  };

  xdg.configFile."nyxt/config.lisp".source = ./nyxt-config.lisp;

  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    commandLineArgs = [
      "--enable-features=UseOzonePlatform"
      "--ozone-platform=wayland"
      "--disable-features=BraveNews,BraveRewards,BraveWallet,WebRtcAllowInputVolumeAdjustment"
      "--hide-crash-restore-bubble"
      "--restore-last-session"
    ];
  };

  xdg.configFile."surfingkeys/config.js".source = ./surfingkeys-config.js;

xdg.desktopEntries = {
  khan-academy = {
    name = "Khan Academy";
    exec = "${pkgs.brave}/bin/brave --app=https://www.khanacademy.org/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./khan-academy-log.png;
  };

  the-odin-project = {
    name = "TOP: The Odin Project";
    exec = "${pkgs.brave}/bin/brave --app=https://www.theodinproject.com/dashboard --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./top-icon.png;
  };

  youtube = {
    name = "YouTube";
    exec = "${pkgs.brave}/bin/brave --app=https://www.youtube.com --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./youtube.png;
  };

  Deep-Seek = {
    name = "Deep Seek";
    exec = "${pkgs.brave}/bin/brave --app=https://chat.deepseek.com --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./deep-seek.png;
  };

  gemini = {
    name = "Gemini";
    exec = "${pkgs.brave}/bin/brave --app=https://gemini.google.com/app --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./gemini.png;
  };

  SillyTavern = {
    name = "Silly Tavern";
    exec = "${pkgs.brave}/bin/brave --app=http://127.0.0.1:8585/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./deep-seek.png;
  };

  weight-tracker = {
    name = "Weight Tracker";
    exec = "${pkgs.brave}/bin/brave --app=https://www.docs.google.com/spreadsheets/d/1w-b4trFSWNrBQS52KmcZsIfq678T2F_S_8TXcrZrCmA --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./google-sheets-icon.png;
  };

  steno-jig = {
    name = "Steno Jig";
    exec = "${pkgs.brave}/bin/brave --app=https://joshuagrams.github.io/steno-jig/form.html --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  typey-type = {
    name = "Typey Type";
    exec = "${pkgs.brave}/bin/brave --app=https://didoesdigital.com/typey-type/lessons/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  G-Mail = {
    name = "Google Email";
    exec = "${pkgs.brave}/bin/brave --app=https://gmail.com --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  G-Calendar = {
    name = "Google Calendar";
    exec = "${pkgs.brave}/bin/brave --app=https://calendar.google.com --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  Toggl = {
    name = "Toggl Time Tracking";
    exec = "${pkgs.brave}/bin/brave --app=https://track.toggl.com/timer --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  Exist = {
    name = "Exist Dashboard";
    exec = "${pkgs.brave}/bin/brave --app=https://exist.io/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  Whisper = {
    name = "Whisper";
    exec = "${pkgs.brave}/bin/brave --app=http://127.0.0.1:8000/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  Kokoro = {
    name = "Kokoro";
    exec = "${pkgs.brave}/bin/brave --app=http://127.0.0.1:8880/web/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  Open-Webui = {
    name = "Open WebUI";
    exec = "${pkgs.brave}/bin/brave --app=http://127.0.0.1:8180/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };

  syncthing = {
    name = "Syncthing";
    exec = "${pkgs.brave}/bin/brave --app=http://localhost:8385/ --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
  };
};
}
