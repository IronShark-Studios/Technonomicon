{ inputs, ... }: {
  flake.nixosModules.Tn-calendar = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      khal
      vdirsyncer
      calcurse
    ];
  };
}
