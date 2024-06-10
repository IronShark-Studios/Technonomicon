{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.emacs = {
    enable = true;
    package = pkgs.emacs-unstable-pgtk;
  };

  home = {
    packages = with pkgs; [
      fd
      silver-searcher
      hunspell
      hunspellDicts.en_US-large
      openscad-lsp
      gforth
      racket
      languagetool
    ];

    file = {
      ".spacemacs" = {
        source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Projects/Technonomicon/Shared/Emacs/spacemacs";
      };

      ".spacemacs.env" = {
        source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Projects/Technonomicon/Shared/Emacs/spacemacs.env";
      };

      "Personal-Layers" = {
        target = ".config/emacs/private";
        source = ./Personal-Layers;
        recursive = true;
      };
    };
  };
}
