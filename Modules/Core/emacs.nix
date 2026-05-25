{ inputs, ... }: {

  flake.nixosModules.editor-feature = { pkgs, config, ... }: {

    nixpkgs.overlays = [ inputs.doom-emacs-unstraightened.overlays.default ];

    programs.ewm.emacsPackage = pkgs.emacsWithDoom {
      doomDir = ./Doom;
      doomLocalDir = "~/.local/share/nix-doom";

      emacs = pkgs.emacs-pgtk;

      extraPackages = epkgs: [
        config.programs.ewm.ewmPackage

        (epkgs.trivialBuild {
          pname = "app-launcher";
          version = "unstable";
          src = inputs.app-launcher;
        })

      ];
    };

      environment.systemPackages = [ config.programs.ewm.emacsPackage ];
  };
}
