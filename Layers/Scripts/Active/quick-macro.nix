{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."quick-macro" = {
    target = "scripts/quick-macro.sh";
    text = ''
      #!/bin/sh

      sleep 0.35
      ydotool key 97:1 49:1 49:0 97:0
    '';
  };
}
