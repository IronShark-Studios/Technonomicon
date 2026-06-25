{ inputs, pkgs, ... }: {
  imports = [ inputs.lazyvim-nix.homeManagerModules.default ];

  programs.lazyvim = {
    enable = true;

    installCoreDependencies = true;

    extraPackages = with pkgs; [ lua-language-server ];

    # ── Language extras ──────────────────────────────────────────────────────────
    extras = {
      lang = {
        nix      = { enable = true; installDependencies = true; };
        python   = { enable = true; installDependencies = true; };
        haskell  = { enable = true; installDependencies = true; };
        zig      = { enable = true; installDependencies = true; };
        clangd   = { enable = true; installDependencies = true; };
        typst    = { enable = true; installDependencies = true; };
        tex      = { enable = true; installDependencies = true; };
        r        = { enable = true; installDependencies = true; };
        markdown = { enable = true; };
      };

      editor = {
        telescope  = { enable = true; };
        "neo-tree" = { enable = true; };
        harpoon2   = { enable = true; };
      };

      ui."indent-blankline" = { enable = true; };

      coding = {
        luasnip    = { enable = true; };
        "nvim-cmp" = { enable = true; };
      };
    };

    # ── Vim options ───────────────────────────────────────────────────────────────
    config.options = ''
      vim.opt.number         = true
      vim.opt.relativenumber = true
      vim.opt.scrolloff      = 10
      vim.opt.signcolumn     = "yes"
      vim.opt.tabstop        = 2
      vim.opt.shiftwidth     = 2
      vim.opt.expandtab      = true
      vim.opt.undofile       = true
      vim.opt.ignorecase     = true
      vim.opt.smartcase      = true
      vim.opt.splitright     = true
      vim.opt.splitbelow     = true
      vim.opt.updatetime     = 250
    '';

    # ── Plugins ───────────────────────────────────────────────────────────────────
    plugins = {

      colorscheme = ''
        return {
          {
            "scottmckendry/cyberdream.nvim",
            lazy = false,
            priority = 1000,
            opts = { italic_comments = true },
            config = function(_, opts)
              require("cyberdream").setup(opts)
              vim.cmd.colorscheme("cyberdream")
            end,
          },
          { "folke/tokyonight.nvim", enabled = false },
        }
      '';

      vimtex-settings = ''
        return {
          {
            "lervag/vimtex",
            init = function()
              vim.g.vimtex_view_method     = "sioyek"
              vim.g.vimtex_compiler_method = "latexmk"
            end,
            keys = {
              { "<leader>lc", "<cmd>VimtexCompile<cr>", desc = "LaTeX compile" },
              { "<leader>lv", "<cmd>VimtexView<cr>",    desc = "LaTeX view" },
              { "<leader>le", "<cmd>VimtexErrors<cr>",  desc = "LaTeX errors" },
            },
          }
        }
      '';

      neogit = ''
        return {
          {
            "NeogitOrg/neogit",
            dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
            cmd = "Neogit",
            opts = {},
            keys = {
              { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
            },
          }
        }
      '';

      undotree = ''
        return {
          {
            "mbbill/undotree",
            cmd = "UndotreeToggle",
            keys = {
              { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undo tree" },
            },
          }
        }
      '';

      toggleterm = ''
        return {
          {
            "akinsho/toggleterm.nvim",
            version = "*",
            opts = { direction = "float" },
            keys = {
              { "<F4>",       "<cmd>ToggleTerm<cr>",                       mode = { "n", "i", "v" }, desc = "Toggle terminal" },
              { "<leader>tt", "<cmd>ToggleTerm cmd='taskwarrior-tui'<cr>", desc = "Taskwarrior" },
            },
          }
        }
      '';

      obsidian = ''
        return {
          {
            "epwalsh/obsidian.nvim",
            version = "*",
            lazy = true,
            ft = "markdown",
            dependencies = { "nvim-lua/plenary.nvim" },
            opts = {
              workspaces  = { { name = "Grimoire", path = "~/Grimoire" } },
              daily_notes = {
                folder      = "Journal",
                date_format = "%Y-%m-%d",
                template    = "Templates/Daily.md",
              },
              completion      = { nvim_cmp = true },
              ui              = { enable = true },
              follow_url_func = function(url) vim.fn.jobstart({ "xdg-open", url }) end,
            },
            keys = {
              { "<leader>on", "<cmd>ObsidianNew<cr>",     desc = "Obsidian new" },
              { "<leader>of", "<cmd>ObsidianSearch<cr>",  desc = "Obsidian search" },
              { "<leader>od", "<cmd>ObsidianDailies<cr>", desc = "Obsidian dailies" },
              { "<leader>ot", "<cmd>ObsidianToday<cr>",   desc = "Obsidian today" },
              { "<leader>ol", "<cmd>ObsidianLinks<cr>",   desc = "Obsidian links" },
            },
          }
        }
      '';

      molten = ''
        return {
          {
            "benlubas/molten-nvim",
            build = ":UpdateRemotePlugins",
            dependencies = { "3rd/image.nvim" },
            opts = {
              image_provider   = "image.nvim",
              auto_open_output = true,
            },
          },
          { "3rd/image.nvim",          opts = {} },
          { "HakonHarnes/img-clip.nvim", opts = {} },
        }
      '';

    };
  };
}
