{ inputs, ... }: {
  flake.nixosModules.web-browsers-feature = { pkgs, pkgs-stable, config, ... }: {

    programs.chromium.enable = true;
    environment.systemPackages = [
      (pkgs.brave.override {
        commandLineArgs = [
          "--enable-features=UseOzonePlatform"
          "--ozone-platform=wayland"
          "--disable-features=BraveNews,BraveRewards,BraveWallet,WebRtcAllowInputVolumeAdjustment"
          "--hide-crash-restore-bubble"
          "--restore-last-session"
        ];
      })
    ];

    hjem.users.xin = {
      enable = true;
      files = {
        ".config/surfingkeys/config.js".source = ./_surfingkeys.js;
      };
    };

    environment.etc."brave/policies/managed/default.json".text = builtins.toJSON {
      "PasswordManagerEnabled" = false;
      "AutofillAddressEnabled" = false;
      "AutofillCreditCardEnabled" = false;

      "BraveRewardsDisabled" = true;
      "BraveWalletDisabled" = true;
      "BraveVPNMode" = 0; # 0 = Disabled
      "TorDisabled" = true;
      "IPFSCompanionEnabled" = false;

      "DefaultBrowserSettingEnabled" = false;
      "MetricsReportingEnabled" = false;
      "SearchSuggestEnabled" = false;

      "ShowHomeButton" = false;
      "NewTabPageLocation" = "https://en.wikipedia.org/wiki/Special:Random";
      "HomepageLocation" = "https://en.wikipedia.org/wiki/Special:Random";
      "BraveNewTabWidgetsVisible" = false;
      "NewTabPageAllowedTypes" = [ "none" ];
      "ImagesForNewTabPageEnabled" = false;

      "ExtensionInstallForcelist" = [
        "gfbliohnnapiefjpjlpjnehglfpaknnc;https://clients2.google.com/service/update2/crx" # Surfingkeys
        "eimadpbcbfnmbkopoojfekhnkhdbieeh;https://clients2.google.com/service/update2/crx" # Dark Reader
        "nngceckbapebfimnlniiiahkandclblb;https://clients2.google.com/service/update2/crx" # Bitwarden
        "cjpalhdlnbpafiamejdnhcphjbkeiagm;https://clients2.google.com/service/update2/crx" # uBlock Origin
      ];
    };
  };
}
