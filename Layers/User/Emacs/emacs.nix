{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}:
{

  programs.emacs = {
    enable = true;
    package = pkgs.emacs-unstable-pgtk;
    extraPackages = epkgs: [ epkgs.vterm ];
  };

  home = {
    packages = with pkgs; [
      (aspellWithDicts (
        dicts: with dicts; [
          en
          en-computers
          en-science
        ]
      ))
      hunspellDicts.en_US-large
      hunspell
      fd
      silver-searcher
      openscad-lsp
      languagetool
      nixfmt-rfc-style
      shfmt
      shellcheck
      pandoc
      scrot
      sqlite

    # Programming Languages
      racket
      chez
      guile
      ghc
      python3Full
      hy

    # Degugging / Testing Tools
      gdb
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
        source = ./Custom/secrets.el;
        target = ".config/doom/secrets.el";
      };

      "modus-varangian.el" = {
        source = ./Custom/modus-varangian.el;
        target = ".config/doom/lisp/modus-varangian";
      };
    };
  };
}
