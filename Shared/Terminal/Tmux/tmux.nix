{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    prefix = "C-x";
    shell = "\${pkgs.zsh}/bin/zsh";
    disableConfirmationPrompt = true;
    extraConfig = ''
    set-option -sa terminal-overrides ",xterm*:Tc"
    bind '"' split-window -v -c "#{pane_current_path}"
    bind % split-window -h -c "#{pane_current_path}"
    set -g status off
    '';
  };
}
