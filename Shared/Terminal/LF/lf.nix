{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.lf = {
    enable = true;
    keybindings = {
      n = "down";
      e = "up";
      "<enter>" = "open";
      "<space>" = "updir";
    };
    extraConfig = ''
set hidden true
set ignorecase true
set icons true
    '';
  };
}
