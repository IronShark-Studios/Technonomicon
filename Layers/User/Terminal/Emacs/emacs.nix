{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-doom-emacs-unstraightened.hmModule
  ];

  services.emacs = {
    enable = false;
    client.enable = false;
    defaultEditor = true;
  };

  programs.doom-emacs = {
    enable = true;
    doomDir = ./Doom;
    emacs= pkgs.emacs30-pgtk;
    extraPackages = epkgs: [ epkgs.treesit-grammars.with-all-grammars ];
  };

  programs.direnv = {
      enable = true;
      enableZshIntegration = true; # Hooks it into your Zsh shell
      nix-direnv.enable = true;    # Crucial: Makes direnv lightning fast with Nix Flakes!
  };

  home.packages = with pkgs; [
    sqlite
    # Export Tooling
    pandoc
    # Chart Tooling
    mermaid-cli
    drawio
    pdf2svg
    #PDF Tooling
    poppler
    (symlinkJoin {
      name = "sioyek-wrapped";
      paths = [ sioyek ];
      buildInputs = [ makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/sioyek \
          --set QT_QPA_PLATFORM xcb
      '';
    })
    # LaTeX
    texlive.combined.scheme-full
    # Spell Checking
    hunspell
    hunspellDicts.en_US
    # Haskell
    ghc cabal-install haskell-language-server haskellPackages.hoogle
    # Nix
    nixfmt
    # Python
    python3 pyright ruff black
    # BQN
    cbqn
    # Bash / Shell
    nodePackages.bash-language-server shellcheck shfmt
    # Scheme & Racket (Your miniKanren environments)
    guile racket
    # C
    gcc clang-tools # provides clangd LSP
    # Zig
    zig zls
    # Assembly & Forth
    nasm gforth
    # Verilog & VHDL
    verilator verible ghdl vhdl-ls
    # Jupyter Notebooks
    python3
    python3Packages.jupyter
    zeromq
  ];
}
