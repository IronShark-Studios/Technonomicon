{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh = {
    enable = true;

    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];

    history.ignoreAllDups = true;
    historySubstringSearch.enable = true;

    sessionVariables = {
      SUDO_EDITOR = "\"emacsclient -n -c\"";
      NIXOS_GENERATION = "$(sudo nix-env --list-generations --profile /nix/var/nix/profiles/system | tail -n 1 | sed 's/(current)//')";
    };

    initExtra = ''
      autoload -Uz compinit && compinit
      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
      eval "$(zoxide init zsh)"
      bindkey -a 'm' vi-backward-char
      printf '\n%.0s' {1..100}
    '';
  };
}
