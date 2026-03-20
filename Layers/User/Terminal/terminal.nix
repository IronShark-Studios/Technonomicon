{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./Alacritty/alacritty.nix
    ./Starship/starship.nix
    ./ZSH/alaises.nix
    ./ZSH/oh-my-zsh.nix
    ./ZSH/theme.nix
    ./ZSH/zsh.nix
    ./ZSH/zsh-env.nix
    ./Tmux/tmux.nix
    ./BASH/bash.nix
    ./GIT/git.nix
    ./Emacs/emacs.nix
    ./VIM/vim.nix
  ];
}
