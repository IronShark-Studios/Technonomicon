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

    home-manager.users.xin.home.file = {
      ".config/helix/config.toml".text = ''
        theme = "onedark"

        [editor]
        line-number        = "relative"
        cursorline         = true
        color-modes        = true
        idle-timeout       = 200
        completion-replace = true

        [editor.cursor-shape]
        insert = "bar"
        normal = "block"
        select = "underline"

        [editor.indent-guides]
        render = true

        [editor.statusline]
        left  = ["mode", "spinner", "file-name", "file-modification-indicator"]
        right = ["diagnostics", "position", "file-encoding", "file-type"]

        [keys.normal]
        "space.f"     = ":format"
        "space.space" = "file_picker"
      '';

      ".config/helix/languages.toml".text = ''
        [[language]]
        name = "nix"
        language-servers = ["nixd"]
        formatter = { command = "nixfmt" }
        auto-format = true

        [[language]]
        name = "python"
        language-servers = ["pyright"]
        formatter = { command = "black", args = ["-", "--quiet"] }
        auto-format = true

        [[language]]
        name = "haskell"
        language-servers = ["haskell-language-server"]

        [[language]]
        name = "typescript"
        language-servers = ["typescript-language-server"]
        formatter = { command = "prettier", args = ["--parser", "typescript"] }
        auto-format = true

        [[language]]
        name = "tsx"
        language-servers = ["typescript-language-server"]
        formatter = { command = "prettier", args = ["--parser", "typescript"] }
        auto-format = true

        [[language]]
        name = "javascript"
        language-servers = ["typescript-language-server"]
        formatter = { command = "prettier", args = ["--parser", "babel"] }
        auto-format = true

        [[language]]
        name = "jsx"
        language-servers = ["typescript-language-server"]
        formatter = { command = "prettier", args = ["--parser", "babel"] }
        auto-format = true

        [[language]]
        name = "c"
        language-servers = ["clangd"]

        [[language]]
        name = "cpp"
        language-servers = ["clangd"]

        [[language]]
        name = "zig"
        language-servers = ["zls"]
        auto-format = true

        [[language]]
        name = "markdown"
        language-servers = ["marksman"]
        formatter = { command = "prettier", args = ["--parser", "markdown"] }

        [[language]]
        name = "json"
        formatter = { command = "prettier", args = ["--parser", "json"] }
        auto-format = true

        [[language]]
        name = "html"
        formatter = { command = "prettier", args = ["--parser", "html"] }
        auto-format = true

        [[language]]
        name = "css"
        formatter = { command = "prettier", args = ["--parser", "css"] }
        auto-format = true
      '';
    };
  };
}
