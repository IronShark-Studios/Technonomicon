{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.lf = {
    enable = true;
    keybindings = {
      n = "down";
      e = "up";
      "<enter>" = "open";
      "<space>" = "updir";
    };
  };
}
