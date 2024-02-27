{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.vim = {
    enable = true;
    extraConfig = ''
      map m <Left>
      map n <Down>
      map e <Up>
      map i <Right>
    '';
  };
}
