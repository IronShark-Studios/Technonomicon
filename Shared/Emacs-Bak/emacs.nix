{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.emacs = {
    enable = true;
    package = (pkgs.emacsWithPackagesFromUsePackage {
      config = ./init.el;
      defaultInitFile = true;
      package = pkgs.emacs-unstable-pgtk;
      alwaysEnsure = true;
      extraEmacsPackages = epkgs: with epkgs; [
      ];
    });
  };

  home = {
    packages = with pkgs; [
      fd
      silver-searcher
      hunspell
      hunspellDicts.en_US-large
      openscad-lsp
    ];

    file.emacs-init = {
      source = ./init.el;
      target = ".config/emacs/init.el";
    };
  };
}
