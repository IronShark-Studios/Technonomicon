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
      gforth
      racket
      languagetool
      python3
      cmake
      gnumake
      ansible
      docker
      dockfmt
      sqlite
      libclang
      clojure
      clojure-lsp
      cljfmt
      sbcl
      glslang
      libxml2
      gfortran9
      fortran-fpm
      fortls
      fprettify
      gdtoolkit_4
      haskell-language-server
      ghc
      cabal-install
      nixfmt-rfc-style
      scrot
      gnuplot
      zig
      zls
      html-tidy
      stylelint
      jsbeautifier
      rustc
      cargo
      rust-analyzer
      shfmt
      shellcheck
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
        target = ".config/doom/secrets.el";
      };
    };
  };
}
