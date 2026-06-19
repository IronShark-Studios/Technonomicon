{ inputs, ... }: {

  flake.nixosModules.Tn-emacs = { pkgs, config, ... }: {

    nixpkgs.overlays = [ inputs.doom-emacs-unstraightened.overlays.default ];

    programs.ewm.emacsPackage = pkgs.emacsWithDoom {
      doomDir = ./Doom;
      doomLocalDir = "~/.local/share/nix-doom";

      emacs = pkgs.emacs-pgtk;

      extraPackages = epkgs: [
        config.programs.ewm.ewmPackage

        epkgs.treesit-grammars.with-all-grammars

        (epkgs.trivialBuild {
          pname = "app-launcher";
          version = "unstable";
          src = inputs.app-launcher;
        })

      ];
    };

    environment.systemPackages = with pkgs; [
      config.programs.ewm.emacsPackage
      # General Tooling
      claude-code
      sqlite
      gdb
      # Export Tooling
      pandoc
      # Chart Tooling
      mermaid-cli
      drawio
      pdf2svg
      #PDF Tooling
      poppler
      # LaTeX
      texlive.combined.scheme-full
      # Spell Checking
      hunspell
      hunspellDicts.en_US
      # Haskell
      ghc cabal-install haskell-language-server haskellPackages.hoogle
      # Nix
      nixfmt
      nixd
      # Python
      python3 pyright ruff black
      # BQN
      cbqn
      # Bash / Shell
      shellcheck shfmt
      # Scheme & Racket (Your miniKanren environments)
      guile racket
      # C
      clang-tools # provides clangd LSP
      # Zig
      zig zls
      # Assembly & Forth
      nasm gforth
      # Verilog & VHDL
      verilator verible ghdl vhdl-ls
      # Jupyter Notebooks
      zeromq
      python3Packages.jupyter
    ];
  };
}
