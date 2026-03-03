{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-doom-emacs-unstraightened.hmModule
  ];

  services.emacs = {
    enable = true;
    defaultEditor = true; 
    client.enable = true; 
  };

  programs.doom-emacs = {
    enable = true;
    doomDir = ./Doom;
    emacs= pkgs.emacs30-pgtk; 
  };

  home.packages = with pkgs; [
    sqlite
    # Haskell
    ghc cabal-install haskell-language-server haskellPackages.hoogle
    # Nix
    nil nixfmt-rfc-style
    # Python
    python3 pyright ruff
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
  ];
}
