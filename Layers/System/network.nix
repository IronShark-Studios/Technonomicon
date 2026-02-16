{ inputs, outputs, lib, config, pkgs, ... }: {

  networking = {
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
  };

networking.firewall = {
  enable = true;
  allowedTCPPorts = [ 7236 7250 8384 ];
  allowedUDPPorts = [ 7236 5353 ];
};
networking.firewall.trustedInterfaces = [ "p2p-wl+" ];
services.udev.extraRules = ''
  SUBSYSTEM=="net", KERNEL=="p2p-dev-*", ACTION=="add", TAG-="systemd"
'';
xdg.portal = {
  enable = true;
  extraPortals = [ pkgs.xdg-desktop-portal-gnome ];
  config.common.default = [ "gnome" ];
};

  services = {
    openssh = {
      enable = false;
      settings = {
        permitRootLogin = "no";
        passwordAuthentication = false;
      };
    };

    printing.enable = true;
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    syncthing = {
      enable = true;
      openDefaultPorts = true;
    };
  };
}
