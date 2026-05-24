{ inputs, ... }: {
  flake.nixosModules.editor-feature = { pkgs, ... }: {

    nixpkgs.overlays = [ inputs.doom-emacs-unstraightened.overlays.default ];

    environment.systemPackages = [
      (pkgs.emacsWithDoom {
        doomDir = ./Doom;
        doomLocalDir = "~/.local/share/nix-doom";
      })
    ];
  };
}
