{ inputs, ... }: {
  flake.nixosModules.Tn-hyprland = { pkgs, ... }: {

    programs.hyprland.enable = true;
    programs.hyprlock.enable = true;

    xdg.portal.extraPortals  = [ pkgs.xdg-desktop-portal-hyprland ];
    xdg.portal.configPackages = [ pkgs.xdg-desktop-portal-hyprland ];

    environment.systemPackages = with pkgs; [
      rofi-wayland
      hyprpaper
      hypridle
      bibata-cursors
    ];

    home-manager.users.xin = {

      home.pointerCursor = {
        package    = pkgs.bibata-cursors;
        name       = "Bibata-Modern-Classic";
        size       = 24;
        gtk.enable = true;
        x11.enable = true;
      };

      programs.waybar = {
        enable = true;
        systemd = {
          enable = true;
          target = "hyprland-session.target";
        };

        settings = [{
          layer    = "top";
          position = "top";

          modules-left   = [ "hyprland/workspaces" "hyprland/window" ];
          modules-center = [ "clock" ];
          modules-right  = [ "wireplumber" "battery" "tray" ];

          "hyprland/workspaces" = {
            format   = "{id}";
            on-click = "activate";
          };

          "hyprland/window" = {
            max-length = 60;
          };

          clock = {
            format         = "{:%a %b %d  %H:%M}";
            tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          };

          wireplumber = {
            format       = "  {volume}%";
            format-muted = "  muted";
            on-click     = "pavucontrol";
          };

          battery = {
            states          = { warning = 30; critical = 15; };
            format          = "{icon}  {capacity}%";
            format-charging = "  {capacity}%";
            format-icons    = [ "" "" "" "" "" ];
          };

          tray = {
            spacing = 10;
          };
        }];

        style = ''
          * {
            font-family: "JetBrains Mono", "Symbols Nerd Font";
            font-size: 13px;
            border: none;
            border-radius: 0;
            min-height: 0;
          }
          window#waybar {
            background-color: rgba(10, 10, 20, 0.92);
            color: #cdd6f4;
            border-bottom: 2px solid rgba(0, 255, 255, 0.3);
          }
          #workspaces button {
            padding: 0 8px;
            color: #666;
            background: transparent;
          }
          #workspaces button.active {
            color: #00ffff;
            border-bottom: 2px solid #00ffff;
          }
          #workspaces button:hover {
            color: #cdd6f4;
            background: rgba(255, 255, 255, 0.05);
          }
          #window {
            padding: 0 10px;
            color: #999;
          }
          #clock {
            color: #cdd6f4;
            font-weight: bold;
          }
          #wireplumber, #battery, #tray {
            padding: 0 12px;
            color: #cdd6f4;
          }
          #battery.warning  { color: #f9e2af; }
          #battery.critical { color: #f38ba8; }
          #battery.charging { color: #a6e3a1; }
        '';
      };

      home.file = {
        ".config/hypr/hyprland.lua".text = ''
          hl.monitor({
            output   = "",
            mode     = "preferred",
            position = "auto",
            scale    = "auto",
          })

          local terminal = "ghostty"
          local mainMod  = "SUPER"

          hl.env("XCURSOR_SIZE",  "24")
          hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
          hl.env("HYPRCURSOR_SIZE", "24")

          hl.on("hyprland.start", function()
            hl.exec_cmd("hyprpaper")
            hl.exec_cmd("hypridle")
          end)

          hl.config({
            input = {
              kb_layout    = "us",
              follow_mouse = 1,
              touchpad     = { natural_scroll = true },
            },
            general = {
              gaps_in     = 5,
              gaps_out    = 0,
              border_size = 2,
              col = {
                active_border   = "rgba(00ffffee)",
                inactive_border = "rgba(595959aa)",
              },
              layout = "dwindle",
            },
            decoration = {
              rounding = 8,
            },
            dwindle = {
              preserve_split = true,
            },
          })

          hl.bind(mainMod .. " + Return",         hl.dsp.exec_cmd("rofi -show drun"))
          hl.bind(mainMod .. " + SHIFT + Return",  hl.dsp.exec_cmd(terminal))
          hl.bind(mainMod .. " + D",              hl.dsp.window.close())
          hl.bind(mainMod .. " + SHIFT + Q",      hl.dsp.window.close())
          hl.bind(mainMod .. " + Escape",         hl.dsp.exec_cmd("hyprlock"))
          hl.bind(mainMod .. " + SHIFT + E",      hl.dsp.exit())
          hl.bind(mainMod .. " + F",              hl.dsp.window.fullscreen())

          hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left"  }))
          hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down"  }))
          hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up"    }))
          hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

          hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left"  }))
          hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down"  }))
          hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up"    }))
          hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

          for i = 1, 9 do
            hl.bind(mainMod .. " + " .. i,         hl.dsp.focus({ workspace = i }))
            hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
          end

          hl.bind("Print", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))

          hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
          hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
        '';

        ".config/hypr/hyprpaper.conf".text = ''
          # Place wallpaper at ~/.config/hypr/wallpaper.png and uncomment:
          # preload  = ~/.config/hypr/wallpaper.png
          # wallpaper = ,~/.config/hypr/wallpaper.png
          splash = false
          ipc    = off
        '';

        ".config/hypr/hyprlock.conf".text = ''
          background {
            blur_passes = 3
            blur_size   = 7
          }

          input-field {
            size             = 300, 50
            position         = 0, -100
            halign           = center
            valign           = center
            placeholder_text = Password
            dots_center      = true
          }
        '';

        ".config/hypr/hypridle.conf".text = ''
          general {
            lock_cmd         = hyprlock
            before_sleep_cmd = hyprlock
          }

          listener {
            timeout    = 300
            on-timeout = hyprlock
          }

          listener {
            timeout    = 600
            on-timeout = systemctl suspend
          }
        '';
      };
    };
  };
}
