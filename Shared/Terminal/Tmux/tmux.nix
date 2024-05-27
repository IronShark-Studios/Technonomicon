{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    prefix = "C-x";
    disableConfirmationPrompt = true;
    extraConfig = ''
    set-option -sa terminal-overrides ",xterm*:Tc"\n
    '';
  };
}
