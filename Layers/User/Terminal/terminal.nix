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

  home.file."sabaki-rofi" = {
    target = ".local/share/applications/sabaki.desktop";
    text = ''
     #!/usr/bin/env xdg-open
     [Desktop Entry]
     Version=1.0
     Terminal=false
     Type=Application
     Name=Sabaki
     Exec=/home/xin/.nix-profile/bin/sabaki
    '';

  };
}
