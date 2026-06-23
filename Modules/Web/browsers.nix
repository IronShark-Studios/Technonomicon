{ inputs, ... }: {
  flake.nixosModules.Tn-web-browsers = { pkgs, config, ... }:
    let
      # Nyxt 4.0 — not yet in nixpkgs; fetch the official AppImage.
      # Steps to fill this in:
      #   1. Download the .AppImage from github.com/atlas-engineer/nyxt/releases
      #   2. Run: nix-prefetch-url --type sha256 file:///path/to/nyxt.AppImage
      #   3. Paste the resulting hash below.
      nyxt4 = pkgs.appimageTools.wrapType2 {
        name    = "nyxt";
        version = "4.0.0";
        src = pkgs.fetchurl {
          url  = "TODO";   # e.g. the .AppImage asset URL from the GitHub release page
          hash = "sha256-TODO";
        };
      };
    in {

    programs.chromium.enable = true;
    environment.systemPackages = [
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

    environment.etc."brave/policies/managed/default.json".text = builtins.toJSON {
      "PasswordManagerEnabled" = false;
      "AutofillAddressEnabled" = false;
      "AutofillCreditCardEnabled" = false;

      "BraveRewardsDisabled" = true;
      "BraveWalletDisabled" = true;
      "BraveVPNMode" = 0;
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
        "gfbliohnnapiefjpjlpjnehglfpaknnc;https://clients2.google.com/service/update2/crx"
        "eimadpbcbfnmbkopoojfekhnkhdbieeh;https://clients2.google.com/service/update2/crx"
        "nngceckbapebfimnlniiiahkandclblb;https://clients2.google.com/service/update2/crx"
        "cjpalhdlnbpafiamejdnhcphjbkeiagm;https://clients2.google.com/service/update2/crx"
        "dndlcbaomdoggooaficldplkcmkfpgff;https://clients2.google.com/service/update2/crx"
        "blaaajhemilngeeffpbfkdjjoefldkok;https://clients2.google.com/service/update2/crx"
      ];
    };

  };
}
