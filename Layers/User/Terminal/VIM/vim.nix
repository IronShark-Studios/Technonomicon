{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.vim = {
    enable = true;
  };

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraWrapperArgs = [
        "--prefix"
        "PATH"
        ":"
        "${lib.makeBinPath [ pkgs.gcc ]}"
      ];

#    extraConfig =''
#    set clipboard=unnamedplus
#
#    let fcitx5state=system("fcitx5-remote")
#autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote")[0] | silent !fcitx5-remote -c " Disable the input method when exiting insert mode and save the state
#autocmd InsertEnter * :silent if fcitx5state == 2 | call system("fcitx5-remote -o") | endif " 2 means that the input method was opened in the previous state, and the input method is started when entering the insert mode
#
#    '';

 #   extraLuaConfig =''
 #   vim.g.mapleader = " "
 #   '';

    plugins = with pkgs.vimPlugins; [
    nvim-treesitter.withAllGrammars
    # nvim-treesitter.withPlugins
    ];
  };

  home.file."LazyVim" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Projects/Technonomicon/Layers/User/Terminal/VIM/LazyVim";
    target = ".config/nvim";
    recursive = true;
  };






}
