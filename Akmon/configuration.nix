{ inputs, outputs, config, lib, pkgs, modulesPath, ... }: {

  system.stateVersion = "23.11";

  networking.hostName = "Akmon";

  imports = [
    ./hardware-configuration.nix
    ../Layers/System/systemd.nix
    ../Layers/System/network.nix
    ../Layers/System/nixpkgs.nix
    ../Layers/System/pkgs.nix
    ../Layers/System/utf.nix
    ../Layers/System/virtualization.nix
    ../Layers/System/display.nix
    ../Layers/Scripts/Active/system-scripts.nix
    ../Layers/Scripts/Active/quick-macro.nix
  ];

  hardware = { 
    uinput.enable = true;
    graphics = {
      enable = true;
    };
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.beta;
      open = true;
      nvidiaSettings = true;
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
    };
    opentabletdriver = {
      enable = true;
      daemon.enable = true;
    };
  };

  boot = {
    kernelModules = [ "uinput" ];
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [
      "nvidia-drm.modset=1"
      "nvidia-drm.fbdev=1"
    ];
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


  services.udev.extraRules = ''
    KERNEL=="ttyACM[0-9]*", MODE="0666"
    KERNEL=="ttyUSB[0-9]*", MODE="0666"
  '';

  services.xserver.videoDrivers = [ "nvidia" ];

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
