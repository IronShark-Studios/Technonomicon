{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.waybar = {
    enable = true;
  };

  home = {
    pointerCursor = {
        gtk.enable = true;
        package = pkgs.vanilla-dmz;
        name = "Vanilla-DMZ";
    };

    packages = with pkgs; [
      pavucontrol
    ];

    file = {
      "waybar-config" = {
        target = ".config/waybar/config.jsonc";
        text = ''
      {
          "layer": "bottom",
          "position": "top",
          "height": 30,

          "modules-left": ["hyprland/workspaces"],
          "modules-center": ["clock"],
          "modules-right": ["network", "pulseaudio", "battery", "tray"],
          "hyprland/workspaces": {
              "format": "{icon}",
              "on-click": "activate",
              "on-scroll-up": "hyprctl dispatch workspace e+1",
              "on-scroll-down": "hyprctl dispatch workspace e-1"
          },
          "clock": {
              "format": "{:%H:%M %a %b %d}",
              "tooltip": false
          },
          "battery": {
            "format": "<span font='Font Awesome 5 Free 11'>{icon}</span>  {capacity}%",
            "format-icons": ["", "", "", "", ""],
            "format-time": "{H}h{M}m",
            "format-charging": "<span font='Font Awesome 5 Free'></span>  <span font='Font Awesome 5 Free 11'>{icon}</span>  {capacity}% - {time}",
            "format-full": "<span font='Font Awesome 5 Free'></span>  <span font='Font Awesome 5 Free 11'>{icon}</span> ",
            "interval": 30,
            "states": {
                "warning": 25,
                "critical": 10
            },
            "tooltip": false,
            "on-click": "2"
          },
          "network": {
              "format": "{icon}",
              "format-alt": "{ipaddr}/{cidr} {icon}",
              "format-alt-click": "click-right",
              "format-icons": {
                  "wifi": ["󰣴", "󰣸" ,"󰣺"],
                  "ethernet": ["󰈁"],
                  "disconnected": ["󰯡"]
              },
              "on-click": "alacritty -e nmtui",
          "tooltip": false
          },
          "pulseaudio": {
              "format": "{volume}% {icon}",
              "on-click": "wpctl set-mute @DEFAULT_SINK@ toggle",
              "format-muted": "Muted  ",
              "format-icons": {
                  "phone": ["  ", "  ", "  ", "  "],
                  "default": [" ", " ", " ", " "]
              },
              "scroll-step": 1,
              "tooltip": false
          },
          "tray": {
              "icon-size": 18
          }
      }
    '';
      };

      "waybar-css" = {
        target = ".config/waybar/style.css";
        text = ''
        * {
            border:        none;
            border-radius: 0;
            font-family:   Iosveka;
            font-size:     15px;
            box-shadow:    none;
            text-shadow:   none;
            transition-duration: 0s;
        }

        window {
            color:      rgba(217, 216, 216, 1);
            background: rgba(35, 31, 32, 1);
        }

        window#waybar.solo {
            color:      rgba(217, 216, 216, 1);
            background: rgba(35, 31, 32, 0.85);
        }

        #workspaces {
            margin: 0 5px;
        }

        #workspaces button {
            padding:    0 5px;
            color:      rgba(217, 216, 216, 0.4);
        }

        #workspaces button.visible {
            color:      rgba(217, 216, 216, 1);
        }

        #workspaces button.focused {
            border-top: 3px solid rgba(217, 216, 216, 1);
            border-bottom: 3px solid rgba(217, 216, 216, 0);
        }

        #workspaces button.urgent {
            color:      rgba(238, 46, 36, 1);
        }

        #mode, #battery, #cpu, #memory, #network, #pulseaudio, #idle_inhibitor, #backlight, #custom-storage, #custom-spotify, #custom-weather, #custom-mail {
            margin:     0px 6px 0px 10px;
            min-width:  25px;
        }

        #clock {
            margin:     0px 16px 0px 10px;
            min-width:  140px;
        }

        #battery.warning {
           color:       rgba(255, 210, 4, 1);
        }

        #battery.critical {
            color:      rgba(238, 46, 36, 1);
        }

        #battery.charging {
            color:      rgba(217, 216, 216, 1);
        }
      '';
      };
    };
  };
}
