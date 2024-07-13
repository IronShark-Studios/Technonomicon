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
      "config.el" = {
        source = ./Doom/config.el;
        target = ".config/doom/config.el";
      };

      "init.el" = {
        source = ./Doom/init.el;
        target = ".config/doom/init.el";
      };

      "packages.el" = {
        source = ./Doom/packages.el;
        target = ".config/doom/packages.el";
      };

      "secrets.el" = {
        source = ./secrets.el;
        target = ".config/doom/secrets.el"
      };
    };
  };
}
