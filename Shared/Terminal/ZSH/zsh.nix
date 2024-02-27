{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh = {
    enable = true;

    autocd = true;
    enableCompletion = true;
    enableAutosuggestions = true;

    history.ignoreAllDups = true;
    historySubstringSearch.enable = true;

    sessionVariables = {
      SUDO_EDITOR = "\"emacsclient\"";
      NIXOS_GENERATION = "$(sudo nix-env --list-generations --profile /nix/var/nix/profiles/system | tail -n 1 | sed 's/(current)//')";
    };

    initExtra = ''
      autoload -Uz compinit && compinit
      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
      eval "$(zoxide init zsh)"
      bindkey -a 'm' vi-backward-char
      printf '\n%.0s' {1..100}
      neofetch
    '';
  };
}
