{ inputs, outputs, lib, config, pkgs, ... }: {


  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    theme =  "minimal";

    plugins = with pkgs; [
      rofi-emoji
      rofi-calc
      rofi-bluetooth
    ];
  };

  home.file = {
    "rofi-theme" = {
      target = ".config/rofi/minimal.rasi";
      source = ./minimal-rofi.rasi;
    };
  };

  home.file = {
    "rofi-kill-menu" = {
      target = ".config/rofi/kill-menu.sh";
      executable = true;
      text = ''
        #!/bin/sh

        PROCESS_LIST=$(ps -u $USER -o pid,comm,%cpu,%mem --sort=-%cpu)

        SELECTED_PROCESS=$(echo -e "$PROCESS_LIST" | rofi -dmenu -i -p "Kill Process:" -lines 10)

        if [ -n "$SELECTED_PROCESS" ]; then
            # Extract the PID (which is the first column) from the selected line
            PID_TO_KILL=$(echo "$SELECTED_PROCESS" | awk '{print $1}')
            
            # Use xargs to safely kill the process using the extracted PID.
            # -r: Prevents 'kill' from running if the input is empty.
            xargs -r kill <<< "$PID_TO_KILL"
        fi
      '';
    };
  };
}
