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
    ];
    extraConfig = ''
      '';
  };
}
