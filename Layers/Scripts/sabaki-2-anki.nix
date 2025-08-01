{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."sabaki-2-anki.nix" = {
    target = "scripts/sabaki-2-anki.sh";
    text = ''
#! /bin/sh

# Copies current variation into system clipboard
ydotool key 56:1 56:0 #alt
ydotool key 28:1 28:0 #enter
ydotool key 108:1 108:0 #down arrow
ydotool key 108:1 108:0 #down arrow
ydotool key 108:1 108:0 #down arrow
ydotool key 108:1 108:0 #down arrow
ydotool key 108:1 108:0 #down arrow
ydotool key 108:1 108:0 #down arrow
ydotool key 106:1 106:0 #right arrow
ydotool key 108:1 108:0 #down arrow
ydotool key 28:1 28:0 #enter

#small pause to prevent interference from holding keys
#sleep 0.25

# Moves to focus to the window to the right
#ydotool key 125:1 106:1 106:0 125:0

# Pastes and submits variation to anki
#ydotool key 29:1 42:1 47:1 47:0 42:0 29:0 #ctrl-shift-v
#ydotool key 29:1 28:1 28:0 29:0 #ctrl-enter
    '';
  };
}
