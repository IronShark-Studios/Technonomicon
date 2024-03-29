{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.emacs = {
    enable = true;
    package = (pkgs.emacsWithPackagesFromUsePackage {
      config = ./init.el;
      defaultInitFile = true;
      package = pkgs.emacs-unstable;
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

    file = {
      emacs-init = {
        source = ./init.el;
        target = ".config/emacs/init.el";
      };

      ".config/emacs/bookmarks".source = config.lib.file.mkOutOfStoreSymlink
        "${config.home.homeDirectory}/Projects/Tn-Final/Shared/Emacs/Maximal/bookmarks";
    };
  };

}
