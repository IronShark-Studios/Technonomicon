{ inputs, outputs, lib, config, pkgs, ... }: {

  networking = {
    hostName = "Artemis";
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
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
  };
}
