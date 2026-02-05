{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./firefox-tridactyl.nix
    ./firefox-userChrome.nix
    ./firefox-userPolicies.nix
  ];

  home.packages = with pkgs; [
    bitwarden-cli
    bitwarden-desktop
    shiori
    sqlite
    brave
  ];


  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ pkgs.tridactyl-native ];
  };

  programs.chromium = {
    enable = true;
  };

  programs.qutebrowser = {
    enable = true;
    loadAutoconfig = true;
    extraConfig =''
      c.aliases = {'w': 'session-save', 'q': 'close', 'qa': 'quit', 'wq': 'quit --save', 'wqa': 'quit --save'}
      c.colors.webpage.darkmode.enabled = True 
      c.colors.hints.bg = '#539bf5'
      c.auto_save.session = True
      c.tabs.show = 'never'
      c.statusbar.show = 'never'
      config.bind('D', ':tab-only')
      config.bind('o', 'cmd-set-text -s :open')
      config.bind('O', 'open -- {clipboard}')
      config.bind('t', 'cmd-set-text -s :open -t')
      config.bind('T', 'open -t -- {clipboard}')
      config.bind('m', 'cmd-set-text -s :spawn shiori add {url} -i "%"')
      config.bind('b', 'cmd-set-text -sr :tab-focus')
      config.bind('B', 'spawn shiori add {url} -i {title} -t "unsorted"')
      config.bind('I', 'hint images')
      config.bind(';i', 'hint images userscript ~/.config/qutebrowser/qute-image-download.sh')
      c.downloads.remove_finished = 3000
      c.auto_save.interval = 1000
      c.downloads.location.directory = '~/Downloads/'
      c.downloads.location.suggestion = 'both'
      c.url.start_pages = ['https://en.wikipedia.org/wiki/Special:Random']
      c.url.default_page = 'https://en.wikipedia.org/wiki/Special:Random'
      c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}','!d': 'https://duckduckgo.com/?q={}', '!gi': 'https://www.google.com/search?tbm=isch&q={}', '!gs': 'https://scholar.google.com/scholar?q={}', '!r': 'https://google.com/search?q=[site:https://reddit.com {}]', '!w': 'https://en.wikipedia.org/w/index.php?search={}', '!np': 'https://search.nixos.org/packages?channel=unstable&query={}', '!no': 'https://search.nixos.org/options?channel=unstable&query={}', '!ho': 'https://home-manager-options.extranix.com/?query={}&release=master','!amz': 'https://www.amazon.com/s?k={}','!books': 'https://annas-archive.org/search?q={}'}

    '';
  };

  home.file = {
    "qute-image-download" = {
      target = ".config/qutebrowser/qute-image-download.sh";
      executable = true;
      text = ''
        #!/bin/sh

        curl -o "$QUTE_DOWNLOAD_DIR/$(date +%s)_$RANDOM.png" $QUTE_URL
      '';
    };

    "greasemonkey-scripts" = {
      target = ".config/qutebrowser/greasemonkey";
      source = ./greasemonkey-scripts;
      recursive = true;
    };
  };

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

  weight-tracke = {
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

  vikunja = {
    name = "Kanban";
    exec = "${pkgs.brave}/bin/brave --app=http://localhost:3456 --start-maximized";
    terminal = false;
    categories = [ "Application" "Network" ];
    icon = ./kanban.png;
  };

};
}
