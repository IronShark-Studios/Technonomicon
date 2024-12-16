{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = [
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
    ];
    extraConfig = ''
        cdd() { z "$1" && eza --icons --oneline --group-directories-first --color auto; }
        rg-menu() { rg -i "$1" | fzf; }
        rgx-menu() { rg --regex "$1" | fzf; }
        fd-menu() { fd -i "$1" | fzf; }
        fdx-menu() { fd --regex "$1" | fzf; }
      '';
  };

  home.packages = with pkgs; [
    fzf
  ];
}
