{ inputs, outputs, lib, config, pkgs, ... }: {

  networking = {
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
