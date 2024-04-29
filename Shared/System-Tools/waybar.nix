{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.waybar = {
    enable = true;
  };

  home.file = {

    "waybar-config" = {
    target = ".config/waybar/config.jsonc";
    text = ''
      {
          "layer": "bottom",
          "position": "top",
          "height": 30,

          "modules-left": ["sway/workspaces", "sway/mode"],
          "modules-center": ["sway/window"],
          "modules-right": ["tray", "pulseaudio", "network", "idle_inhibitor", "clock"],
          "sway/mode": {
              "format": " {}"
          },
          "sway/workspaces": {
              "format": "{name}",
              "disable-scroll": true
          },
          "sway/window": {
              "max-length": 80,
              "tooltip": false
          },
          "clock": {
              "format": "{:%a %d %b %H:%M}",
              "tooltip": false
          },
          "network": {
              "format": "{icon}",
              "format-alt": "{ipaddr}/{cidr} {icon}",
              "format-alt-click": "click-right",
              "format-icons": {
                  "wifi": ["", "" ,""],
                  "ethernet": [""],
                  "disconnected": [""]
              },
              "on-click": "alacritty -e nmtui",
          "tooltip": false
          },
          "pulseaudio": {
              "format": "{icon}",
              "format-alt": "{volume} {icon}",
              "format-alt-click": "click-right",
              "format-muted": "",
              "format-icons": {
                  "phone": [" ", " ", " ", " "],
                  "default": ["", "", "", ""]
              },
              "scroll-step": 10,
              "on-click": "pavucontrol",
              "tooltip": false
          },
          "idle_inhibitor": {
              "format": "{icon}",
              "format-icons": {
                  "activated": "",
                  "deactivated": ""
              },
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
            font-family:   Sans;
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
}
