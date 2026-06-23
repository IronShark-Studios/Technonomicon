{ inputs, pkgs, ... }: {
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];

  programs.nixvim = {
    enable = true;
    viAlias  = true;
    vimAlias = true;
    defaultEditor = true;

    colorschemes.cyberdream = {
      enable = true;
      settings.italic_comments = true;
    };

    opts = {
      number         = true;
      relativenumber = true;
      scrolloff      = 10;
      signcolumn     = "yes";
      tabstop        = 2;
      shiftwidth     = 2;
      expandtab      = true;
      undofile       = true;
      ignorecase     = true;
      smartcase      = true;
      splitright     = true;
      splitbelow     = true;
      updatetime     = 250;
    };

    globals.mapleader = " ";

    # ── LSP ──────────────────────────────────────────────────────────────────────
    plugins.lsp = {
      enable = true;
      servers = {
        nixd.enable     = true;
        pyright.enable  = true;
        clangd.enable   = true;
        hls.enable      = true;
        zls.enable      = true;
        tinymist.enable = true;
        lua-ls.enable   = true;
        ruff.enable     = true;
      };
    };

    # ── Completion ───────────────────────────────────────────────────────────────
    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
      settings.sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "path"; }
        { name = "obsidian"; }
      ];
    };
    plugins.luasnip.enable = true;
    plugins.friendly-snippets.enable = true;

    # ── Treesitter ───────────────────────────────────────────────────────────────
    plugins.treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable    = true;
      };
    };

    # ── Navigation ───────────────────────────────────────────────────────────────
    plugins.telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = { action = "find_files";            desc = "Find files"; };
        "<leader>fg" = { action = "live_grep";             desc = "Live grep"; };
        "<leader>fb" = { action = "buffers";               desc = "Buffers"; };
        "<leader>fr" = { action = "oldfiles";              desc = "Recent files"; };
        "<leader>fs" = { action = "lsp_document_symbols";  desc = "Document symbols"; };
        "<leader>fS" = { action = "lsp_workspace_symbols"; desc = "Workspace symbols"; };
      };
    };

    plugins.harpoon = {
      enable = true;
      keymaps = {
        addFile          = "<leader>ha";
        toggleQuickMenu  = "<leader>hh";
        navFile = {
          "1" = "<M-1>";
          "2" = "<M-2>";
          "3" = "<M-3>";
          "4" = "<M-4>";
        };
      };
    };

    # ── Git ──────────────────────────────────────────────────────────────────────
    plugins.gitsigns.enable = true;
    plugins.neogit.enable   = true;

    # ── UI ───────────────────────────────────────────────────────────────────────
    plugins.lualine.enable         = true;
    plugins.which-key.enable       = true;
    plugins.noice.enable           = true;
    plugins.notify.enable          = true;
    plugins.indent-blankline.enable = true;
    plugins.trouble.enable          = true;
    plugins.undotree.enable         = true;

    plugins.neo-tree = {
      enable = true;
      closeIfLastWindow = true;
    };

    plugins.toggleterm = {
      enable = true;
      settings.direction = "float";
    };

    # ── Editing ──────────────────────────────────────────────────────────────────
    plugins.flash.enable        = true;
    plugins.comment.enable      = true;
    plugins.nvim-autopairs.enable = true;
    plugins.nvim-surround.enable  = true;

    # ── Academic ─────────────────────────────────────────────────────────────────
    plugins.vimtex = {
      enable = true;
      texlivePackage = null;
      settings = {
        view_method     = "sioyek";
        compiler_method = "latexmk";
      };
    };

    plugins.obsidian = {
      enable = true;
      settings = {
        workspaces = [{ name = "Grimoire"; path = "~/Grimoire"; }];
        daily_notes = {
          folder      = "Journal";
          date_format = "%Y-%m-%d";
          template    = "Templates/Daily.md";
        };
        completion.nvim_cmp = true;
        ui.enable = true;
        follow_url_func.__raw = ''
          function(url) vim.fn.jobstart({"xdg-open", url}) end
        '';
      };
    };

    plugins.molten = {
      enable = true;
      settings = {
        image_provider   = "image.nvim";
        auto_open_output = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      image-nvim
      img-clip-nvim
    ];

    # ── Keymaps ──────────────────────────────────────────────────────────────────
    keymaps = [
      # LSP
      { key = "gd";          action.__raw = "vim.lsp.buf.definition";                               mode = "n"; }
      { key = "gr";          action = "<cmd>Telescope lsp_references<cr>";                           mode = "n"; }
      { key = "K";           action.__raw = "vim.lsp.buf.hover";                                     mode = "n"; }
      { key = "<leader>ca";  action.__raw = "vim.lsp.buf.code_action";                               mode = ["n" "v"]; }
      { key = "<leader>rn";  action.__raw = "vim.lsp.buf.rename";                                    mode = "n"; }
      { key = "<leader>f";   action.__raw = "function() vim.lsp.buf.format { async = true } end";    mode = ["n" "v"]; }

      # Diagnostics
      { key = "<leader>xx";  action = "<cmd>Trouble diagnostics toggle<cr>";  mode = "n"; }
      { key = "[d";          action.__raw = "vim.diagnostic.goto_prev";       mode = "n"; }
      { key = "]d";          action.__raw = "vim.diagnostic.goto_next";       mode = "n"; }

      # Git
      { key = "<leader>gg";  action = "<cmd>Neogit<cr>";          mode = "n"; }

      # File tree
      { key = "<leader>e";   action = "<cmd>Neotree toggle<cr>";  mode = "n"; }

      # Terminal
      { key = "<F4>";        action = "<cmd>ToggleTerm<cr>";       mode = ["n" "i" "v"]; }

      # Undo tree
      { key = "<leader>u";   action = "<cmd>UndotreeToggle<cr>";  mode = "n"; }

      # Flash motion
      { key = "s";  action.__raw = "function() require('flash').jump() end";        mode = ["n" "v"]; }
      { key = "S";  action.__raw = "function() require('flash').treesitter() end";  mode = ["n" "v"]; }

      # Obsidian
      { key = "<leader>on";  action = "<cmd>ObsidianNew<cr>";      mode = "n"; }
      { key = "<leader>of";  action = "<cmd>ObsidianSearch<cr>";   mode = "n"; }
      { key = "<leader>od";  action = "<cmd>ObsidianDailies<cr>";  mode = "n"; }
      { key = "<leader>ot";  action = "<cmd>ObsidianToday<cr>";    mode = "n"; }
      { key = "<leader>ol";  action = "<cmd>ObsidianLinks<cr>";    mode = "n"; }

      # LaTeX
      { key = "<leader>lc";  action = "<cmd>VimtexCompile<cr>";  mode = "n"; }
      { key = "<leader>lv";  action = "<cmd>VimtexView<cr>";     mode = "n"; }
      { key = "<leader>le";  action = "<cmd>VimtexErrors<cr>";   mode = "n"; }

      # Taskwarrior
      { key = "<leader>tt";  action = "<cmd>ToggleTerm cmd='taskwarrior-tui'<cr>";  mode = "n"; }
    ];
  };
}
