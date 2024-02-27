{ inputs, outputs, lib, config, pkgs, ... }: {

  services.polybar = {
      enable = true;
      script = "polybar thanatos &";
      settings = {
        "colors" = {
          background = "#191e24";
          foreground = "C5C8C6";
          primary = "#5ec4ff";
          secondary = "#8ABEB7";
          alert = "#d85362";
          disabled = "#707880";
        };
        "bar/thanatos" = {
          width = "100%";
          height = "24pt";
          background = "\${colors.background}";
          foreground = "\${colors.foreground}";
          line-size = "3pt";
          padding-right = "2";
          module-margin = "1";
          separator = "|";
          separator-foreground = "\${colors.disabled}";
          font-0 = ''"Iosevka:size=16:weight=extrabold;2"'';
          modules-left = "xworkspaces memory cpu cpu-temp";
          modules-right = "pulseaudio date battery";
          cursor-click = "pointer";
          cursor-scroll = "ns-resize";
          enable-ipc = "true";
        };
        "module/battery" = {
          type = "internal/battery";
          label-charging = "Charging %percentage%%";
          full-at = "98";
          low-at = "10";
          battery = "BAT0";
          adapter = "AC";
          poll-interval = "5";
        };
        "module/xworkspaces" = {
          type = "internal/xworkspaces";
          pin-workspaces = true;
          label-active = "%name%";
          label-active-background = "\${colors.background}";
          label-active-underline= "\${colors.primary}";
          label-active-padding = "1";
          label-occupied = "%name%";
          label-occupied-padding = "1";
          label-urgent = "%name%";
          label-urgent-background = "\${colors.alert}";
          label-urgent-padding = "1";
          label-empty = "%name%";
          label-empty-foreground = "\${colors.disabled}";
          label-empty-padding = "1";
        };
        "module/pulseaudio" = {
          type = "internal/pulseaudio";
          format-volume-prefix = "VOL ";
          format-volume-prefix-forground = "\${colors.primary}";
          format-volume = "<label-volume>";
          label-volume = "%percentage%%";
          label-muted = "muted";
          label-muted-foreground = "\${colors.disabled}";
        };
        "module/memory" = {
          type = "internal/memory";
          interval = "2";
          format-prefix = ''"RAM "'';
          format-prefix-foreground = "\${colors.primary}";
          label = "%percentage_used:2%%";
        };
        "module/cpu" = {
          type = "internal/cpu";
          interval = "2";
          format-prefix = ''"CPU "'';
          format-prefix-foreground = "\${colors.primary}";
          label = "%percentage:2%%";
        };
        "module/cpu-temp" = {
          type = "custom/script";
          interval = "2";
          exec = "~/.config/polybar/polybar-CPU-temp.sh";
        };
        "module/date" = {
          type = "internal/date";
          interval = "1";
          date = "%H:%M %Y-%m-%d %A";
          label = "%date%";
          label-foreground = "\${colors.forground}";
        };
        "module/backlight" = {
          type = "internal/backlight";
          format-prefix = "Brightness ";
          format-foreground = "\${colors.primary}";
          label = "%percentage%%";
        };
        "settings" = {
          screenchange-reload = "true";
          pseudo-transparency = "true";
        };
      };
  };

  home.file = {
    "polybar-CPU-temp.sh" = {
      target = ".config/polybar/polybar-CPU-temp.sh";
      executable = true;
      text = ''
    #!/bin/sh

    sensors | grep "Package id 0:" | tr -d '+' | awk '{print $4}'
  '';
    };
  };

  home.packages = with pkgs; [
    lm_sensors
    pciutils
  ];
}
