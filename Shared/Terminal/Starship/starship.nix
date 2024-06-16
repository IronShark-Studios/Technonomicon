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

          [character]
          success_symbol = "[❯](#7fff00)"
          error_symbol = "[✗](#ff4b00)"

          [cmd_duration]
          style = "#7fff00"
          format = "[ $duration](bg:#20282f fg:$style)"

          [directory]
          style = "#7fff00"
          truncate_to_repo = false
          fish_style_pwd_dir_length = 1
          format = "[](fg:black bg:#7fff00)[$path[$read_only](bg:$style fg:black)](bg:$style fg:black)[](fg:$style)"
          read_only = " "

          [git_branch]
          style = "#dcdcdc"
          format = "[](fg:black bg:$style)[ $symbol$branch](fg:black bg:$style)[](fg:$style)"

          [git_commit]
          style = "#dcdcdc"
          format = "\b[ ](bg:$style)[\\($hash$tag\\)](fg:black bg:$style)[](fg:$style)"

          [git_state]
          style = "#dcdcdc"
          format = "\b[ ](bg:$style)[ \\($state( $progress_current/$progress_total)\\)](fg:black bg:$style)[](fg:$style)"


          [git_status]
          style = "#dcdcdc"
          format = "(\b[ ](bg:$style fg:black)$conflicted$staged$modified$renamed$deleted$untracked$stashed$ahead_behind[](fg:$style))"
          conflicted = "[  ](bold fg:88 bg:#dcdcdc)[  ](fg:black bg:#dcdcdc)"
          staged = "[  ](fg:black bg:#dcdcdc)"
          modified = "[  ](fg:black bg:#dcdcdc)"
          renamed = "[  ](fg:black bg:#dcdcdc)"
          deleted = "[  ](fg:black bg:#dcdcdc)"
          untracked = "[ ? ](fg:black bg:#dcdcdc)"
          stashed = "[  ](fg:black bg:#dcdcdc)"
          ahead = "[  ](fg:#523333 bg:#dcdcdc)"
          behind = "[  ](fg:black bg:#dcdcdc)"
          diverged = "[  ](fg:88 bg:#dcdcdc)[ נּ ](fg:black bg:#dcdcdc)[  ](fg:black bg:#dcdcdc)[  ](fg:black bg:#dcdcdc)"

   '';
  };
}
