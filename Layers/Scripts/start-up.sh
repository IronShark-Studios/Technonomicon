{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."start-up.nix" = {
    target = "scripts/start-up.sh";
    text = ''
#! /bin/sh

hyprctl dispatch workspace 1

zen &

sleep 0.5

hyprctl dispatch workspace 2

obsidian &

sleep 0.5

hyprctl dispatch workspace 8

anki &

sleep 0.5

hyprctl dispatch workspace 7

thunderbird &

sleep 0.5

hyprctl dispatch workspace 9

discord &
    '';
  };
}
