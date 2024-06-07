{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.emacs = {
    enable = true;
    package = pkgs.emacs-unstable-pgtk;
  };

  home = {
    packages = with pkgs; [
    ];

    file = {
      ".config/emacs" = {
        source = config.lib.file.mkOutOfStoreSymlink "/home/xin/Projects/Technonomicon/Shared/Emacs/Spacemacs";
        recursive = true;
      };
    };
  };
}
