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
    vim.g.mapleader = " "
    '';

    plugins = with pkgs.vimPlugins; [
    nvim-treesitter.withAllGrammars
    ];
  };
}
