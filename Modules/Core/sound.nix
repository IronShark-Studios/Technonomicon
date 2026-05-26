{ inputs, ... }: {
  flake.nixosModules.Tn-sound = { pkgs, ... }: {

    programs.xonsh.enable = true;

    environment.systemPackages = with pkgs; [
      wiremix
      alsa-utils
    ];
  };
}
