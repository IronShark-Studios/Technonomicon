{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.waybar = {
    enable = true;
  };

  home.file."waybar-config" = {
    target = ".config/waybar/config.jsonc";
    text = ''
      {
          "layer": "bottom",
          "position": "top",
          "height": 30,

          "modules-left": ["sway/workspaces", "sway/mode"],
          "modules-center": ["sway/window"],
          "modules-right": ["tray", "custom/spotify", "custom/weather", "custom/mail", "custom/storage", "backlight", "pulseaudio", "network", "idle_inhibitor", "battery", "clock"],
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
              "on-click": "termite -e nmtui",
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
}
