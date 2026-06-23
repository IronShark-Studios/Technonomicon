{ inputs, ... }: {
  flake.nixosModules.Tn-quantified = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      dijo
      porsmo
      wtfutil
      activitywatch
      hledger
      hledger-ui
      hledger-web
      haskellPackages.arbtt
      datasette
      visidata
    ];

    services.arbtt = {
      enable = true;
    };
  };
}
