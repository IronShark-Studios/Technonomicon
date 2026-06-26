{ inputs, ... }: {

  flake.nixosModules.Tn-helix = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      helix
      zellij
      lazygit
      ghostty
      # JS / TypeScript
      nodejs
      typescript-language-server
      prettier
      # File Management
      yazi
      # Git
      delta
      # DAP Debug Adapters
      lldb
      python3Packages.debugpy
      # Accounting
      beancount
      # AI Coding
      aider-chat
      # Markdown LSP
      marksman
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
      # PDF Tooling
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
      # Scheme & Racket
      guile racket
      # C
      clang-tools
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
