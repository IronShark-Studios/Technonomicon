{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."start-up.nix" = {
    target = "scripts/start-up.sh";
    text = ''
#! /bin/sh

zen &

obsidian &

anki &

thunderbird &

discord &
    '';
  };
}
