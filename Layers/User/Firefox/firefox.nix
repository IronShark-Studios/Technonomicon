{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./firefox-tridactyl.nix
    ./firefox-userChrome.nix
    ./firefox-userPolicies.nix
  ];

  home.packages = with pkgs; [
    bitwarden-cli
    bitwarden-desktop
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
      config.bind('b', 'cmd-set-text -sr :tab-focus')
      config.bind('B', 'cmd-set-text -s :quickmark-load')
      config.bind('t', 'cmd-set-text -s :open -t')
      config.bind('I', 'hint images')
      config.bind(';i', 'hint images userscript ~/.config/qutebrowser/qute-image-download.sh')
      c.downloads.remove_finished = 3000
      c.downloads.location.directory = '~/Downloads/'
      c.downloads.location.suggestion = 'both'
      c.url.start_pages = ['https://en.wikipedia.org/wiki/Special:Random']
      c.url.default_page = 'https://en.wikipedia.org/wiki/Special:Random'
      c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', '!g': 'https://google.com/search?q={}', '!r': 'https://google.com/search?q=[site:https://reddit.com {}]', '!w': 'https://en.wikipedia.org/w/index.php?search={}', '!nix-pkgs': 'https://search.nixos.org/packages?channel=unstable&query={}', '!nix-opts': 'https://search.nixos.org/options?channel=unstable&query={}', '!hm-opts': 'https://home-manager-options.extranix.com/?query={}&release=master'}

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
  };

}
