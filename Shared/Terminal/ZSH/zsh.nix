{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh = {
    enable = true;
    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
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
      tmux -2Du
      autoload -Uz compinit && compinit
      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
      eval "$(zoxide init zsh)"
      bindkey -a 'm' vi-backward-char
      printf '\n%.0s' {1..100}

      zle-line-init() {
        emulate -L zsh

        [[ $CONTEXT == start ]] || return 0

        while true; do
          zle .recursive-edit
          local -i ret=$?
          [[ $ret == 0 && $KEYS == $'\4' ]] || break
          [[ -o ignore_eof ]] || exit 0
        done

        local saved_prompt=$PROMPT
        local saved_rprompt=$RPROMPT
        PROMPT='󰜵 '
        RPROMPT=''\''
            zle .reset-prompt
            PROMPT=$saved_prompt
              RPROMPT=$saved_rprompt

                if (( ret )); then
                  zle .send-break
                else
                  zle .accept-line
                    fi
                    return ret
      }

          zle -N zle-line-init
    '';
};
}
