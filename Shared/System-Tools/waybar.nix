{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        output = [
          "DP-1"
        ];

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
          };
        };
    };
  };
}
