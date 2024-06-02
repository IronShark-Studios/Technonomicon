{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.lf = {
    enable = true;
    extraConfig = ''
set hidden true
set ignorecase true
set icons true

map n down
map e up
map <enter> open
map <space> updir
    '';
  };
}
