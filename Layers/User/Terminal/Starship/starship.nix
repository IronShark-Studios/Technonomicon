{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  home.file."starship-theme" = {
   target = ".config/starship.toml";
   text = ''
          right_format = """$cmd_duration"""

          [time]
          disabled = true

	        [cmd_duration]
          disabled = true

          [character]
          success_symbol = "[❯](#539bf5)"
          error_symbol = "[✗](#ff4b00)"

          [directory]
          style = "#539bf5"
          truncate_to_repo = true
          fish_style_pwd_dir_length = 3
          format = "[](fg:$style bg:$style)[$read_only](bg:$style fg:#22272e)[$path ](bg:$style fg:#22272e)[](fg:$style )"
          read_only = " "

          [git_branch]
          style = "#2c3e56"
          format = "\b[](fg:#539bf5 bg:$style)[ $symbol](fg:#539bf5 bg:$style)[$branch ](fg:#539bf5 bg:$style)[](fg:$style)"

          [git_commit]
          style = "#2c3e56"
          format = "\b[\\($hash$tag\\)](fg:black bg:$style)[](fg:$style)"

          [git_state]
          style = "#2c3e56"
          format = "\b[\\($state( $progress_current/$progress_total)\\)](fg:black bg:$style)[](fg:$style)"


          [git_status]
          style = "#2c3e56"
          format = "(\b$conflicted$staged$modified$renamed$deleted$untracked$stashed$ahead_behind[](fg:$style))"
          conflicted = "[  ](bold fg:88 bg:#2c3e56)"
          staged = "[  ](fg:#539bf5 bg:#2c3e56)"
          modified = "[  ](fg:#539bf5 bg:#2c3e56)"
          renamed = "[  ](fg:#539bf5 bg:#2c3e56)"
          deleted = "[  ](fg:#539bf5 bg:#2c3e56)"
          untracked = "[ ? ](fg:#539bf5 bg:#2c3e56)"
          stashed = "[  ](fg:#539bf5 bg:#2c3e56)"
          ahead = "[   ](fg:#539bf5 bg:#2c3e56)"
          behind = "[   ](fg:#539bf5 bg:#2c3e56)"

   '';
  };
}
