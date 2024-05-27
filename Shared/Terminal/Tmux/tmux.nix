{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      sensible
      {
        tpm;
      }
    ];
  };
}
