{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."quick-macro" = {
    target = "scripts/quick-macro.sh";
    text = ''
      #!/bin/sh

      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
      sleep 0.3
      ydotool key 57:1 57:0
      sleep 0.2
      ydotool key 2:1 2:0
    '';
  };
}
