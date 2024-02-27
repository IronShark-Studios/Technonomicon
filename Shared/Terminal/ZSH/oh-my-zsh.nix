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
      "vi-mode"
      "colemak"
    ];
    extraConfig = ''
        VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
        VI_MODE_SET_CURSOR=true
        VI_MODE_CURSOR_NORMAL=1
        VI_MODE_CURSOR_INSERT=5
      '';
  };
}
