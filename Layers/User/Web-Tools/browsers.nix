{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
  ];

  home.packages = with pkgs; [
  ];


  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    
    commandLineArgs = [
      "--enable-features=UseOzonePlatform"
      "--ozone-platform=wayland"
      "--disable-features=BraveNews,BraveRewards,BraveWallet,WebRtcAllowInputVolumeAdjustment"
    ];
  };

  xdg.configFile."surfingkeys/config.js".text = ''
    api.unmap('e');
    api.unmap('E');
    api.unmap('S');
    api.unmap('D');

    api.map('J', 'E'); // Go one tab left
    api.map('K', 'R'); // Go one tab right
    api.map('d', 'x'); // Close current tab
    api.map('u', 'X'); // Restore closed tab

    api.map('H', 'S'); // Go back in history
    api.map('L', 'D'); // Go forward in history

    settings.hintAlign = "left";
    api.Hints.setCharacters('asdfghjklqwertyuiopzxcvbnm');

    settings.theme = `
      .sk_theme {
        background: #282c34;
        color: #bbc2cf;
      }
      .sk_theme tbody {
        color: #bbc2cf;
      }
      .sk_theme input {
        color: #bbc2cf;
      }
      .sk_theme .url {
        color: #51afef;
      }
      .sk_theme .annotation {
        color: #c678dd;
      }
      .sk_theme .omnibar_highlight {
        color: #98be65;
      }
      .sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
        background: #282c34;
      }
      .sk_theme #sk_omnibarSearchResult ul li.focused {
        background: #3f444a;
      }
    `;
  '';

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

  gemini = {
    name = "Gemini";
    exec = "${pkgs.brave}/bin/brave --app=https://gemini.google.com/app --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./gemini.png; 
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

};
}
