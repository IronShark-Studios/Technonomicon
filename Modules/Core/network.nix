{ inputs, ... }: {
  flake.nixosModules.Tn-network = { pkgs, ... }: {

    networking.networkmanager.enable = true;
    networking.networkmanager.wifi.backend = "iwd";
    networking.wireless.iwd.enable = true;

    time.timeZone = "America/Detroit";

    environment.systemPackages = with pkgs; [
      impala
      gping
    ];

    networking.firewall = {
      enable = true;
      allowedTCPPorts = [ 7236 7250 8385 ];
      allowedUDPPorts = [ 7236 5353 ];
    };

    networking.firewall.trustedInterfaces = [ "p2p-wl+" ];

    services.avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    services.udev.extraRules = ''
      SUBSYSTEM=="net", KERNEL=="p2p-dev-*", ACTION=="add", TAG-="systemd"
    '';

    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gnome ];
      config.common.default = [ "gnome" ];
    };

    programs = {
      gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
      };
    };

    services = {
      openssh = {
        enable = false;
        settings = {
          permitRootLogin = "no";
          passwordAuthentication = false;
          PasswordAuthentication = false;
          KbdInteractiveAuthentication = false;
        };
      };

      printing.enable = true;

      syncthing = {
        enable = true;
        openDefaultPorts = true;
        guiAddress = "127.0.0.1:8385";
        user = "xin";
        group = "users";
        dataDir = "/home/xin/";
      };
    };
  };
}
