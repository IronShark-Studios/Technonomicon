{ inputs, ... }: {
  flake.nixosModules.Tn-nix = { pkgs, ... }: {
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [ inputs.nix-index-database.nixosModules.nix-index ];

    programs.nh.enable = true;
    programs.nix-index.enable = true;
    programs.nix-index-database.comma.enable = true;

    nixpkgs.config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };

    environment.systemPackages = with pkgs; [
      git
      curl
    ];
  };
}
