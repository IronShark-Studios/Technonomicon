{ inputs, ... }: {
  flake.nixosModules.Tn-sound = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      wiremix
      alsa-utils
    ];
  };
}
