{ inputs, ... }: {
  flake.nixosModules.Tn-games = { pkgs, ... }: {


    environment.systemPackages = with pkgs; [
      xivlauncher
      hyperspeedcube
      exercism
    ];
  };
}
