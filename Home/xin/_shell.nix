{ pkgs, ... }: {

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 50000;
      save = 50000;
      ignoreDups = true;
      share = true;
    };

    initExtra = ''
      # ── Options ────────────────────────────────────────────────────────────────
      setopt AUTO_CD
      setopt EXTENDED_GLOB
      setopt HIST_IGNORE_ALL_DUPS
      setopt HIST_REDUCE_BLANKS

      # ── Colored man pages ───────────────────────────────────────────────────────
      export LESS_TERMCAP_mb=$'\e[1;31m'
      export LESS_TERMCAP_md=$'\e[1;36m'
      export LESS_TERMCAP_me=$'\e[0m'
      export LESS_TERMCAP_se=$'\e[0m'
      export LESS_TERMCAP_so=$'\e[01;33m'
      export LESS_TERMCAP_ue=$'\e[0m'
      export LESS_TERMCAP_us=$'\e[1;4;32m'

      # ── External tool hooks ─────────────────────────────────────────────────────
      eval "$(nix-your-shell zsh)"
      eval "$(zoxide init zsh --cmd cd)"
      eval "$(starship init zsh)"
      eval "$(direnv hook zsh)"

      # fzf shell integration
      if command -v fzf &>/dev/null; then
        source <(fzf --zsh) 2>/dev/null || true
        export FZF_CTRL_R_OPTS="--sort --exact"
      fi

      # ── Auto-ls on directory change ─────────────────────────────────────────────
      chpwd() {
        eza --icons --oneline --group-directories-first --color=always 2>/dev/null || ls
      }

      # ── Word navigation ─────────────────────────────────────────────────────────
      bindkey "^[[1;5C" forward-word    # Ctrl+Right
      bindkey "^[[1;5D" backward-word   # Ctrl+Left

      # ── Functions ───────────────────────────────────────────────────────────────

      # Dump clipboard into a temp file and open in nvim
      nv_clip() {
        local tmp
        tmp=$(mktemp /tmp/nv_clip.XXXXX.txt)
        wl-paste > "$tmp"
        nvim "$tmp"
        rm -f "$tmp"
      }

      # yazi: cd to last directory on exit
      y() {
        local tmp
        tmp=$(mktemp)
        yazi --cwd-file="$tmp" "$@"
        if [[ -s "$tmp" ]]; then
          local cwd
          cwd=$(cat "$tmp")
          [[ "$cwd" != "$PWD" ]] && builtin cd "$cwd"
        fi
        rm -f "$tmp"
      }

      copypath() {
        pwd | wl-copy
        echo "Copied: $(pwd)"
      }

      copyfile() {
        [[ -z "$1" ]] && echo "Usage: copyfile <filename>" && return 1
        cat "$1" | wl-copy && echo "Copied contents of $1"
      }

      pdf-split() {
        [[ -z "$1" ]] && echo "Usage: pdf-split <filename.pdf>" && return 1
        nix-shell -p ocamlPackages.cpdf --run "cpdf -split-bookmarks 0 '$1' -utf8 -o '@B.pdf'"
      }

      ca() { clear && printf '\n%.0s' {1..100}; }

      rg-menu()  { rg -i "''${1:-}" | fzf; }
      rgx-menu() { rg --regex "''${1:-}" | fzf; }
      fd-menu()  { fd -i "''${1:-}" | fzf; }

      # Clear on startup
      printf '\n%.0s' {1..100}
    '';

    shellAliases = {
      # Editor
      vim = "nvim";
      vi  = "nvim";

      # Xonsh as a utility
      xsh = "xonsh";

      # Taskwarrior
      t  = "task";
      tw = "timew";
      tl = "task list";

      # Modern tool overrides
      cat  = "bat";
      find = "fd -g -i";
      grep = "rg -i";
      dd   = "caligula burn";

      # Eza listings
      ls  = "eza --icons --oneline --group-directories-first --color auto --long";
      ll  = "eza --icons --oneline --group-directories-first --color auto";
      lx  = "eza --icons --oneline --group-directories-first --color auto --all";
      lld = "eza --icons --oneline --group-directories-first --color auto --tree";
      lxd = "eza --icons --oneline --group-directories-first --color auto --tree --all";
      lsx = "eza --icons --oneline --group-directories-first --color auto --long --all";
      ld  = "eza --icons --oneline --only-dirs --color auto";

      # Navigation
      tn = "cd ~/Projects/Technonomicon";
      ps = "cd ~/Projects/Personal-Blog/content/posts";
      pj = "cd ~/Projects";
      dl = "cd ~/Downloads";

      # Git
      gst = "git status -sb";
      gco = "git checkout";
      gl  = "git log --oneline -n 10";
      cpv = "rsync -h --progress";

      # Safety
      rm   = "trash-put -v";
      rm-s = "shred -f";

      # System
      restart = "sudo reboot";
      logout  = "sudo kill -9 -1";

      # Downloads & compression
      bzip    = "bzip3";
      book-dl = "aria2c -x 16 -s 16";
    };
  };

  home.sessionVariables = {
    EDITOR      = "nvim";
    VISUAL      = "nvim";
    SUDO_EDITOR = "nvim";
    TIMER_THRESHOLD = "3";
  };
}
