{ inputs, ... }: {
  flake.nixosModules.Tn-communication = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      newsflash
      mako
    ];
  };
}
