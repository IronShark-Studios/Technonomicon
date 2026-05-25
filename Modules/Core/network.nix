{ inputs, ... }: {
  flake.nixosModules.Tn-network = { pkgs, ... }: {

    networking.networkmanager.enable = true;
    networking.networkmanager.wifi.backend = "iwd";
    networking.wireless.iwd.enable = true;

    environment.systemPackages = with pkgs; [
      impala
    ];
  };
}
