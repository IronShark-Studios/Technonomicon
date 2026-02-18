{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
    slack
#    discord
    thunderbird
    hugo
    ];
  };
}
