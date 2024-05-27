{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.tmux = {
    enable = true;
    prefix = "C-x";
    plugins = with pkgs.tmuxPlugins; [
      sensible
    ];
  };
}
