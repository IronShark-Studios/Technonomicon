{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = [
      "ag"
      "colored-man-pages"
      "colorize"
      "copypath"
      "copyfile"
      "cp"
      "git"
      "zoxide"
      "colemak"
      "fzf"
      "sudo"
      "command-not-found"
      "zsh-command-time"
    ];
    extraConfig = ''
        cdd() { z "$1" && eza --icons --oneline --group-directories-first --color auto; }
        rg-menu() { rg -i "$1" | fzf; }
        rgx-menu() { rg --regex "$1" | fzf; }
        fd-menu() { fd -i "$1" | fzf; }
        fdx-menu() { fd --regex "$1" | fzf; }
	
        ZSH_COMMAND_TIME_MIN_SECONDS=3
        ZSH_COMMAND_TIME_MSG="Execution time: %s sec"
        ZSH_COMMAND_TIME_EXCLUDE=(vim mcedit)
      '';
  };

  home.packages = with pkgs; [
    fzf
  ];
}
