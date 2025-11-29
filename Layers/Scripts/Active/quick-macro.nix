{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."quick-macro" = {
    target = "scripts/quick-macro.sh";
    text = ''
      #!/bin/sh

      sleep 0.5
      ydotool key 97:1 46:1 46:0 97:0
      sleep 0.25
      ydotool key 125:1 105:1 105:0 125:0
      sleep 0.25
      ydotool key 97:1 42:1 47:1 47:0 42:0 97:0
      sleep 0.25
      ydotool key 97:1 49:1 49:0 97:0
      sleep 0.25
      ydotool key 97:1 46:1 46:0 97:0
    '';
  };
}
