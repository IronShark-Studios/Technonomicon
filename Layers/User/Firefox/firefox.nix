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
    (writeShellApplication {
      name = "ff-applet";
      text = ''
        URL=$1

        firefox --kiosk --new-instance -P applets "$URL" &
        sleep 1
        hyprctl dispatch fullscreen 1
        hyprctl dispatch fullscreen 1
      '';
    })
  ];


  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ pkgs.tridactyl-native ];
  };

  programs.chromium = {
    enable = false;
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

    "Gemini-app" = {
      target = ".local/share/applications/gemini.desktop";
      text = ''
        #!/usr/bin/env xdg-open
        [Desktop Entry]
        Version=1.0
        Terminal=false
        Type=Application
        Name=Gemini
        Icon=.local/share/applications/gemini.png
        Exec=ff-applet https://gemini.google.com/app
      '';
    };
    "Gemini-icon" = {
      target = ".local/share/applications/gemini.png";
      source = ./gemini.png;
    };

    "YouTube-app" = {
      target = ".local/share/applications/youtube.desktop";
      text = ''
        #!/usr/bin/env xdg-open
        [Desktop Entry]
        Version=1.0
        Terminal=false
        Type=Application
        Name=YouTube
        Icon=.local/share/applications/youtube.png
        Exec=ff-applet https://www.youtube.com
      '';
    };
    "YouTube-icon" = {
      target = ".local/share/applications/youtube.png";
      source = ./youtube.png;
    };
  };

}
