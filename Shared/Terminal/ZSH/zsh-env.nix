{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh.envExtra = ''

  export PATH=”$HOME/.emacs.d/bin:$PATH”

  '';
}
