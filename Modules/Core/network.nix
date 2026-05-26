{ inputs, ... }: {
  flake.nixosModules.Tn-network = { pkgs, ... }: {

    networking.networkmanager.enable = true;
    networking.networkmanager.wifi.backend = "iwd";
    networking.wireless.iwd.enable = true;

    time.timeZone = "America/Detroit";

    environment.systemPackages = with pkgs; [
      impala
    ];
  };
}
