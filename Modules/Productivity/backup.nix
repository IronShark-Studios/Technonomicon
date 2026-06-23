{ inputs, ... }: {
  flake.nixosModules.Tn-backup = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      borgbackup
    ];
  };
}
