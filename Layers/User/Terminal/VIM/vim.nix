{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.vim = {
    enable = true;
    extraConfig = ''
    '';
  };

  programs.neovim = {
    enable = true;
  };
}
