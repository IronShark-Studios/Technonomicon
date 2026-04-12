{ inputs, outputs, config, lib, pkgs, modulesPath, ... }: {

  system.stateVersion = "23.11";

  networking.hostName = "Kvasir";

  imports = [
    ./hardware-configuration.nix
    ../Layers/System/systemd.nix
    ../Layers/System/network.nix
    ../Layers/System/nixpkgs.nix
    ../Layers/System/pkgs.nix
    ../Layers/System/utf.nix
    # ../Layers/System/virtualization.nix
    ../Layers/System/display.nix
    ../Layers/Scripts/Active/system-scripts.nix
    ../Layers/Scripts/Active/quick-macro.nix
  ];

  hardware.uinput.enable = true;


  boot = {
    kernelModules = [ "uinput" ];
    kernelPackages = pkgs.linuxPackages;
    loader = {
      systemd-boot.enable = true;
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
    };
  };

  security = {
    sudo.wheelNeedsPassword = false;
    rtkit.enable = true;
    polkit.enable = true;
    pam.services = {
      gdm.enableGnomeKeyring = true;
      waylock = {
        text = ''
        auth include login
      '';
      };
    };
  };

  environment = {
    etc.secrets.source = ./Secrets;
    pathsToLink = [ "/share/zsh" ];
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
      "hfjbmagddngcpeloejdejnfgbamkjaeg;https://clients2.google.com/service/update2/crx" # Vimium C
      "eimadpbcbfnmbkopoojfekhnkhdbieeh;https://clients2.google.com/service/update2/crx" # Dark Reader
      "nngceckbapebfimnlniiiahkandclblb;https://clients2.google.com/service/update2/crx" # Bitwarden
      "cjpalhdlnbpafiamejdnhcphjbkeiagm;https://clients2.google.com/service/update2/crx" # uBlock Origin
    ];
  };

  services.udev.extraRules = ''
  KERNEL=="ttyACM[0-9]*", MODE="0666"
  KERNEL=="ttyUSB[0-9]*", MODE="0666"
'';

  users = {
    mutableUsers = false;
    users = {
      root = {
        hashedPasswordFile = "/etc/secrets/root-usrPasswd.nix";
      };

      xin = {
        isNormalUser = true;
        openssh.authorizedKeys.keys = [ ];
        extraGroups = [ "wheel" "docker" "ydotool" "scanner" "lp" "uinput" "input" "dialout" ];
        shell = pkgs.zsh;
        hashedPasswordFile = "/etc/secrets/xin-usrPasswd.nix";
      };
    };
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    backupFileExtension = "backup";
    users = {
      xin = import ./xin-home.nix;
    };
  };

}
