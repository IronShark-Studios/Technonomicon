{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    prefix = "C-x";
    disableConfirmationPrompt = true;
    extraConfig = ''
    set-option -sa terminal-overrides ",xterm*:Tc"
    bind '"' split-window -v -c "#{pane_current_path}"
    bind % split-window -h -c "#{pane_current_path}"
    set -g status-bg black
    set -g status-fg white
    '';
  };
}
