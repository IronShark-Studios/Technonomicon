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
    ];

    file = {
    };
  };
}
