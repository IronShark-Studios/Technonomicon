{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    prefix = "C-x";
    shell = "/home/xin/.nix-profile/bin/zsh";
    disableConfirmationPrompt = true;
    extraConfig = ''
    bind '"' split-window -v -c "#{pane_current_path}"
    bind % split-window -h -c "#{pane_current_path}"
    set -g status off
    '';
  };
}
