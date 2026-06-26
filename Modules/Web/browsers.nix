{ inputs, ... }: {
  flake.nixosModules.Tn-web-browsers = { pkgs, config, ... }: {

    programs.chromium.enable = true;
    environment.systemPackages = [
      pkgs.qutebrowser
      ((pkgs.brave.override {
        commandLineArgs = [
          "--enable-features=UseOzonePlatform"
          "--ozone-platform=wayland"
          "--disable-features=BraveNews,BraveRewards,BraveWallet,WebRtcAllowInputVolumeAdjustment"
          "--hide-crash-restore-bubble"
        ];
      }).overrideAttrs (oldAttrs: {
        postFixup = (oldAttrs.postFixup or "") + ''
          for target_dir in "$out/lib/brave" "$out/libexec/brave" "$out/opt/brave" "$out/usr/lib/brave-browser"; do
            if [ -d "$target_dir" ]; then
              echo "Injecting initial_preferences into $target_dir"
              echo '${builtins.toJSON { browser = { custom_chrome_frame = true; }; }}' > "$target_dir/initial_preferences"
            fi
          done
        '';
      }))
    ];

    home-manager.users.xin.home.file.".config/surfingkeys/config.js".source = ./_surfingkeys.js;

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
        "dndlcbaomdoggooaficldplkcmkfpgff;https://clients2.google.com/service/update2/crx" # New Tab, New Window
        "blaaajhemilngeeffpbfkdjjoefldkok;https://clients2.google.com/service/update2/crx" # LeechBlock NG
      ];
    };

  };
}
