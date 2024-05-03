{ inputs, outputs, config, lib, pkgs, modulesPath, ... }: {

  environment = {
    etc.secrets.source = ../Secrets;
    pathsToLink = [ "/share/zsh" ];
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

  users = {
    mutableUsers = false;
    users = {
      root = {
        hashedPasswordFile = "/etc/secrets/root/root-usrPasswd.nix";
      };

      xin = {
        isNormalUser = true;
        openssh.authorizedKeys.keys = [ ];
        extraGroups = [ "wheel" ];
        hashedPasswordFile = "/etc/secrets/xin/xin-usrPasswd.nix";
      };
    };
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    users = {
      xin = import ../../Home-Manager/xin-home.nix;
    };
  };
}
