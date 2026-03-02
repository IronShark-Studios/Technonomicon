{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-doom-emacs-unstraightened.hmModule
  ];

  services.emacs = {
    enable = true;
    defaultEditor = true; 
    client.enable = true; 
  };

  programs.doom-emacs = {
    enable = true;
    doomDir = ./Doom;
    emacs= pkgs.emacs30-pgtk; 
  };

  home.packages = with pkgs; [
  ];
}
