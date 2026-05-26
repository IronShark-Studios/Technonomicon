{ inputs, ... }: {
  flake.nixosModules.Tn-nix = { pkgs, ... }: {
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [ inputs.nix-index-database.nixosModules.nix-index ];

    programs.nix-index.enable = true;
    programs.nix-index-database.comma.enable = true;

    programs.nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 6d --keep 3";
      flake = "/home/xin/Projects/Technonomicon/";
    };

    nixpkgs.config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };

    environment.systemPackages = with pkgs; [
    ];
  };
}
