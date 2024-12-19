{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.vim = {
    enable = true;
  };

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig =''
    set clipboard=unnamedplus
    '';

    extraLuaConfig =''
    local builtin = require('telescope.builtin')


    vim.g.mapleader = " "
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "<leader>ps", function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") });
      end)
    '';

    plugins = with pkgs.vimPlugins; [
    telescope-nvim
    nvim-treesitter.withAllGrammars
    ];
  };
}
