{ inputs, ... }: {
  flake.nixosModules.Tn-games = { pkgs, pkgs-stable, ... }: {


    environment.systemPackages = with pkgs; [
      xivlauncher
      hyperspeedcube
      exercism
    ];
  };
}
