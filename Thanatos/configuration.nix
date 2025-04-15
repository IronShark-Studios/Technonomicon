{ inputs, outputs, config, lib, pkgs, modulesPath, ... }: {

  system.stateVersion = "23.11";

  networking.hostName = "Thanatos";

  imports = [
    ./hardware-configuration.nix
    ../Layers/System/systemd.nix
    ../Layers/System/network.nix
    ../Layers/System/nixpkgs.nix
    ../Layers/System/pkgs.nix
    ../Layers/System/utf.nix
    ../Layers/System/virtualization.nix
    ../Layers/System/display.nix
    ../Layers/Scripts/rebuild.nix
    ../Layers/Scripts/test.nix
    ../Layers/Scripts/upgrade.nix
    ../Layers/Scripts/update-archives.nix
    ../Layers/Scripts/sabaki-2-anki.nix
    ../Layers/Scripts/sgf-archive.nix
    ../Layers/Scripts/start-up.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
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

  users = {
    mutableUsers = false;
    users = {
      root = {
        hashedPasswordFile = "/etc/secrets/root-usrPasswd.nix";
      };

      xin = {
        isNormalUser = true;
        openssh.authorizedKeys.keys = [ ];
        extraGroups = [ "wheel" "docker" "ydotool" ];
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
