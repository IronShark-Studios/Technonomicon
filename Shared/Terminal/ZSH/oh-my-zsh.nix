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
      "zoxide"
      "colemak"
      "fzf"
    ];
    extraConfig = ''
      '';
  };

  home.packages = with pkgs; [
    fzf
    zsh-fzf-tab
  ];
}
