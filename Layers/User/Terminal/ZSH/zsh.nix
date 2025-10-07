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
      {
        name = "fzf-tab";
        file = "fzf-tab.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "Aloxaf";
          repo = "fzf-tab";
          rev = "v1.1.2";
          sha256 = "sha256-Qv8zAiMtrr67CbLRrFjGaPzFZcOiMVEFLg1Z+N6VMhg";
        };
      }
    ];

    history.ignoreAllDups = true;
    historySubstringSearch.enable = true;

    sessionVariables = {
      SUDO_EDITOR = "nvim";
      EDITOR = "nvim";
      BARTIB_FILE = "/home/xin/.config/Bartib/time-tracking.txt";
      NIXOS_GENERATION = "$(sudo nix-env --list-generations --profile /nix/var/nix/profiles/system | tail -n 1 | sed 's/(current)//')";
    };

    initContent = ''

      source ~/.config/Bartib/bartib-completion

      TIMER_FORMAT='[Execution Time: %d]'; TIMER_THRESHOLD=3

      printf '\n%.0s' {1..100}

      hash -d tn=~/Projects/Technonomicon
      hash -d ps=~/Projects/Personal-Blog/content/posts
      hash -d pj=~/Projects
      hash -d dl=~/Downloads

      zstyle ':completion:*' menu no
      zstyle ':fzf-tab:*' switch-group '<' '>'
      zstyle ':completion:*:git-checkout:*' sort false
      zstyle ':completion:*:descriptions' format '[%d]'
      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
      zstyle ':completion:*' list-color "''\${(s.:.)LS_COLORS}"
      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

      autoload -U compinit; compinit
      source ~/.zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

      eval "$(zoxide init zsh)"
      eval "$(fzf --zsh)"

      function chpwd() {
        emulate -L zsh
        eza --icons --oneline --group-directories-first --color auto
      }

      zle-line-init() {
        emulate -L zsh

        [[ $CONTEXT == start ]] || return 0

        while true; do
          zle .recursive-edit
          local -i ret=$?
          [[ $ret == 0 && $KEYS == $'\4' ]] || break
          [[ -o ignore_eof ]] || exit 0
        done

      local NEWLINE=$'\n'
      local saved_prompt=$PROMPT
      local saved_rprompt=$RPROMPT

      PROMPT=' ''\${NEWLINE}❯❯ '
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
