{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./Alacritty/alacritty.nix
    ./Alacritty/alacrittyConfig.nix
    ./Starship/starship.nix
    ./ZSH/alaises.nix
    ./ZSH/oh-my-zsh.nix
    ./ZSH/theme.nix
    ./ZSH/zsh.nix
    ./ZSH/zsh-env.nix
    ./Tmux/tmux.nix
    ./BASH/bash.nix
    ./VIM/vim.nix
    ./GIT/git.nix
  ];
}
