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
    extraConfig =''
      c.aliases = {'w': 'session-save', 'q': 'close', 'qa': 'quit', 'wq': 'quit --save', 'wqa': 'quit --save'}
      c.colors.webpage.darkmode.enabled = True 
      c.colors.hints.bg = '#539bf5'
      c.auto_save.session = True
      c.tabs.show = 'never'
      c.statusbar.show = 'never'
      config.bind('D', ':tab-only')
      config.bind('o', 'spawn ~/.config/qutebrowser/rofi-page-menu.sh')
      config.bind('t', 'spawn ~/.config/qutebrowser/rofi-tab-page-menu.sh')
      config.bind('m', 'cmd-set-text -s :spawn shiori add {url} -i "%"')
      config.bind('P', ':open http://localhost:8080/#home')
      config.bind('b', 'spawn ~/.config/qutebrowser/rofi-buffer-menu.sh')
      config.bind('B', 'cmd-set-text -s :tab-focus')
      config.bind('I', 'hint images')
      config.bind(';i', 'hint images userscript ~/.config/qutebrowser/qute-image-download.sh')
      c.downloads.remove_finished = 3000
      c.auto_save.interval = 1000
      c.downloads.location.directory = '~/Downloads/'
      c.downloads.location.suggestion = 'both'
      c.url.start_pages = ['https://en.wikipedia.org/wiki/Special:Random']
      c.url.default_page = 'https://en.wikipedia.org/wiki/Special:Random'
      c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}','!d': 'https://duckduckgo.com/?q={}', '!g': 'https://google.com/search?q={}', '!r': 'https://google.com/search?q=[site:https://reddit.com {}]', '!w': 'https://en.wikipedia.org/w/index.php?search={}', '!np': 'https://search.nixos.org/packages?channel=unstable&query={}', '!no': 'https://search.nixos.org/options?channel=unstable&query={}', '!ho': 'https://home-manager-options.extranix.com/?query={}&release=master'}

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

    "qute-rofi-page-menu" = {
      target = ".config/qutebrowser/rofi-page-menu.sh";
      executable = true;
      source = ./rofi-page-menu.sh;
    };

    "qute-rofi-tab-page-menu" = {
      target = ".config/qutebrowser/rofi-tab-page-menu.sh";
      executable = true;
      source = ./rofi-tab-page-menu.sh;
    };

    "qute-rofi-buffer-menu" = {
      target = ".config/qutebrowser/rofi-buffer-menu.sh";
      executable = true;
      source = ./rofi-buffer-menu.sh;
    };

    "greasemonkey-scripts" = {
      target = ".config/qutebrowser/greasemonkey";
      source = ./greasemonkey-scripts;
      recursive = true;
    };
  };

}
