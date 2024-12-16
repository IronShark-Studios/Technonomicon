{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    prefix = "C-x";
    shell = "/home/xin/.nix-profile/bin/zsh";
    disableConfirmationPrompt = true;
    plugins = [
    ];
    extraConfig = ''
    '';
  };
}
