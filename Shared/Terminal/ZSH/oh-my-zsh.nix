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
    ];
    extraConfig = ''
      '';
  };

  home.packages = with pkgs; [
    fzf
  ];
}
