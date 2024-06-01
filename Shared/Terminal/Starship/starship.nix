{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  home.file."starship-theme" = {
   target = ".config/starship.toml";
   text = ''
          [time]
          disabled = true

          [character]
          success_symbol = "[❯](#ff9400)"
          error_symbol = "[✗](#ff4b00)"

          [cmd_duration]
          style = "#f9a600"
          right_format = "[](fg:black bg:#f9a600)[ $duration](bg:$style fg:black)[](fg:$style)"

          [directory]
          style = "#c05303"
          truncate_to_repo = false
          fish_style_pwd_dir_length = 1
          format = "[](fg:black bg:#c05303)[$path[$read_only](bg:$style fg:black)](bg:$style fg:black)[](fg:$style)"
          read_only = " "

          [git_branch]
          style = "#d8712c"
          format = "[](fg:black bg:$style)[ $symbol$branch](fg:black bg:$style)[](fg:$style)"

          [git_commit]
          style = "#d8712c"
          format = "\b[ ](bg:$style)[\\($hash$tag\\)](fg:black bg:$style)[](fg:$style)"

          [git_state]
          style = "#d8712c"
          format = "\b[ ](bg:$style)[ \\($state( $progress_current/$progress_total)\\)](fg:black bg:$style)[](fg:$style)"

          [git_status]
          style = "#d8712c"
          format = "(\b[ ](bg:$style fg:black)$conflicted$staged$modified$renamed$deleted$untracked$stashed$ahead_behind[](fg:$style))"
          conflicted = "[  ](bold fg:88 bg:#d8712c)[  ](fg:black bg:#d8712c)"
          staged = "[  ](fg:black bg:#d8712c)"
          modified = "[  ](fg:black bg:#d8712c)"
          renamed = "[  ](fg:black bg:#d8712c)"
          deleted = "[  ](fg:black bg:#d8712c)"
          untracked = "[ ? ](fg:black bg:#d8712c)"
          stashed = "[  ](fg:black bg:#d8712c)"
          ahead = "[  ](fg:#523333 bg:#d8712c)"
          behind = "[  ](fg:black bg:#d8712c)"
          diverged = "[  ](fg:88 bg:#d8712c)[ נּ ](fg:black bg:#d8712c)[  ](fg:black bg:#d8712c)[  ](fg:black bg:#d8712c)"

   '';
  };
}
