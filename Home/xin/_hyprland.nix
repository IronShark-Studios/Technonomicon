{ ... }: {
  home.file.".config/hypr/hyprland.conf".text = ''
    # ── Monitors ────────────────────────────────────────────────────────────────
    # Akmon: update to actual output from `hyprctl monitors`
    # monitor = DP-1, 2560x1440@144, 0x0, 1

    # Kvasir ThinkPad T480s (HiDPI panel)
    # monitor = eDP-1, 2560x1440@60, 0x0, 1.5

    # Fallback: auto-detect
    monitor = ,preferred,auto,auto

    # ── Source Plugins ───────────────────────────────────────────────────────────
    plugin {
      hyprscrolling {
        column_default_width = one
        column_widths = one two maximized
        focus_wrap = false
      }
    }

    plugin:dynamic-cursors {
      enabled = true
      mode = none

      shake {
        enabled   = true
        threshold = 6.0
        base      = 4.0
        speed     = 4.0
        timeout   = 2000
        effects   = false
      }
    }

    # ── Variables ────────────────────────────────────────────────────────────────
    $mod = SUPER

    # ── Input ────────────────────────────────────────────────────────────────────
    input {
      kb_layout = us
      repeat_delay = 500
      repeat_rate = 30
      touchpad {
        natural_scroll = false
        tap-to-click = true
        disable_while_typing = true
        scroll_method = no_scroll
        middle_button_emulation = false
      }
    }

    # ── Cursor ───────────────────────────────────────────────────────────────────
    cursor {
      hide_on_key_press = true
      inactive_timeout = 5
    }

    # ── General ──────────────────────────────────────────────────────────────────
    general {
      gaps_in = 4
      gaps_out = 8
      border_size = 2
      col.active_border = rgba(00FFFFee)
      col.inactive_border = rgba(1D232Faa)
      layout = dwindle
    }

    # ── Decorations ──────────────────────────────────────────────────────────────
    decoration {
      rounding = 6
      blur {
        enabled = true
        size = 4
        passes = 2
      }
    }

    # ── Animations ───────────────────────────────────────────────────────────────
    animations {
      enabled = true
      bezier = snappy, 0.05, 0.9, 0.1, 1.05
      animation = windows, 1, 3, snappy
      animation = fade, 1, 4, default
      animation = workspaces, 1, 4, snappy
    }

    # ── Misc ─────────────────────────────────────────────────────────────────────
    misc {
      disable_hyprland_logo = true
      disable_splash_rendering = true
    }

    # ── Window Rules ─────────────────────────────────────────────────────────────
    windowrulev2 = workspace special:terminal silent, class:^(ghostty-scratchpad)$
    windowrulev2 = float, class:^(ghostty-scratchpad)$
    windowrulev2 = size 65% 60%, class:^(ghostty-scratchpad)$
    windowrulev2 = center, class:^(ghostty-scratchpad)$

    windowrulev2 = workspace name:nvim silent, class:^(ghostty-nvim)$

    windowrulev2 = float, class:^(pavucontrol)$
    windowrulev2 = float, class:^(blueman-manager)$
    windowrulev2 = float, class:^(wl-kbptr)$

    xwayland { force_zero_scaling = true; }

    # ── Autostart ────────────────────────────────────────────────────────────────
    exec-once = mako
    exec-once = hypridle
    exec-once = hyprpaper
    exec-once = waybar
    exec-once = ghostty --class=ghostty-scratchpad
    exec-once = ghostty --class=ghostty-nvim -e nvim
    exec-once = udiskie
    exec-once = copyq
    exec-once = fcitx5 -d
    exec-once = aw-server
    exec-once = aw-watcher-window
    exec-once = aw-watcher-afk

    # ── Keybindings ──────────────────────────────────────────────────────────────

    # Workspaces 1–9
    bind = $mod, 1, workspace, 1
    bind = $mod, 2, workspace, 2
    bind = $mod, 3, workspace, 3
    bind = $mod, 4, workspace, 4
    bind = $mod, 5, workspace, 5
    bind = $mod, 6, workspace, 6
    bind = $mod, 7, workspace, 7
    bind = $mod, 8, workspace, 8
    bind = $mod, 9, workspace, 9
    bind = $mod SHIFT, 1, movetoworkspace, 1
    bind = $mod SHIFT, 2, movetoworkspace, 2
    bind = $mod SHIFT, 3, movetoworkspace, 3
    bind = $mod SHIFT, 4, movetoworkspace, 4
    bind = $mod SHIFT, 5, movetoworkspace, 5
    bind = $mod SHIFT, 6, movetoworkspace, 6
    bind = $mod SHIFT, 7, movetoworkspace, 7
    bind = $mod SHIFT, 8, movetoworkspace, 8
    bind = $mod SHIFT, 9, movetoworkspace, 9

    # Named workspace: persistent Neovim session ($mod+N)
    bind = $mod, code:57, workspace, name:nvim

    # Window management
    bind = $mod, D, killactive
    bind = $mod, W, togglefloating
    bind = $mod, F, fullscreen
    bind = $mod SHIFT, F, fullscreen, 1

    # Launch
    bind = $mod, Return, exec, anyrun
    bind = $mod, T, exec, ghostty
    bind = $mod, grave, togglespecialworkspace, terminal

    # System
    bind = $mod, Q, exec, hyprlock
    bind = $mod SHIFT, Q, exec, wlogout

    # Screenshot / screen tools
    bind = $mod, Y, exec, slurp | grim -g - - | wl-copy
    bind = $mod SHIFT, Y, exec, hyprshot -m region
    bind = $mod CTRL, Y, exec, wf-recorder
    bind = $mod, P, exec, hyprpicker

    # Keyboard pointer
    bind = $mod, K, exec, wl-kbptr

    # Overview
    bind = $mod, TAB, hyprexpo:expo, toggle

    # Focus navigation (Colemak-DH home row: m/n/e/i = ←/↓/↑/→)
    bind = $mod, m, movefocus, l
    bind = $mod, i, movefocus, r
    bind = $mod, n, movefocus, d
    bind = $mod, e, movefocus, u

    # Move windows
    bind = $mod SHIFT, m, movewindow, l
    bind = $mod SHIFT, i, movewindow, r
    bind = $mod SHIFT, n, movewindow, d
    bind = $mod SHIFT, e, movewindow, u

    # hyprscrolling column navigation
    bind = $mod, bracketleft,  scroller:movefocus, begin
    bind = $mod, bracketright, scroller:movefocus, end
    bind = $mod, equal,        scroller:cyclewidth, next
    bind = $mod, minus,        scroller:cyclewidth, prev

    # Resize (hold mod+alt + direction)
    binde = $mod ALT, m, resizeactive, -40 0
    binde = $mod ALT, i, resizeactive,  40 0
    binde = $mod ALT, n, resizeactive, 0  40
    binde = $mod ALT, e, resizeactive, 0 -40
  '';

  programs.hyprlock = {
    enable = true;
    settings = {
      general.hide_cursor = true;

      background = [{
        monitor = "";
        blur_passes = 3;
        blur_size = 8;
        noise = 0.012;
        contrast = 0.89;
        brightness = 0.72;
      }];

      input-field = [{
        size = "320, 52";
        outline_thickness = 2;
        outer_color = "rgb(00FFFF)";
        inner_color = "rgb(1D232F)";
        font_color = "rgb(CFDFDF)";
        fade_on_empty = true;
        placeholder_text = "";
        dots_center = true;
        check_color = "rgb(00FA9A)";
        fail_color = "rgb(FF5370)";
        position = "0, -120";
        halign = "center";
        valign = "center";
      }];

      label = [
        {
          text = "$TIME";
          font_size = 72;
          font_family = "JetBrains Mono";
          color = "rgba(CFDFDFee)";
          position = "0, 100";
          halign = "center";
          valign = "center";
        }
        {
          text = "cmd[update:60000] date '+%A, %B %d %Y'";
          font_size = 18;
          color = "rgba(8C98A6cc)";
          position = "0, 20";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };

  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "hyprlock";
        before_sleep_cmd = "hyprlock";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };
      listener = [
        { timeout = 240; on-timeout = "brightnessctl -s set 20%"; on-resume = "brightnessctl -r"; }
        { timeout = 300; on-timeout = "hyprlock"; }
        { timeout = 600; on-timeout = "systemctl suspend"; }
      ];
    };
  };

  programs.waybar = {
    enable = true;
    settings = [{
      layer = "top";
      position = "top";
      modules-left  = [ "hyprland/workspaces" "hyprland/window" ];
      modules-center = [ "clock" ];
      modules-right = [ "tray" "wireplumber" "network" "cpu" "memory" "battery" "backlight" ];

      "hyprland/workspaces" = {
        format = "{id}";
        on-click = "activate";
      };
      "hyprland/window".max-length = 60;

      clock = {
        format = "{:%H:%M}";
        format-alt = "{:%A, %B %d %Y}";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      };

      tray.spacing = 8;

      wireplumber = {
        format = "  {volume}%";
        format-muted = " ";
        on-click = "pavucontrol";
        max-volume = 150;
        scroll-step = 5;
      };

      network = {
        format-wifi = "  {essid}";
        format-ethernet = " {ifname}";
        format-disconnected = "󰌙 ";
        tooltip-format-wifi = "{essid} ({signalStrength}%)";
      };

      cpu = {
        format = " {usage}%";
        interval = 5;
      };

      memory = {
        format = " {used:0.1f}G";
        interval = 10;
      };

      battery = {
        format = "{icon} {capacity}%";
        format-icons = [ "" "" "" "" "" ];
        states = { warning = 30; critical = 15; };
      };

      backlight = {
        format = "{icon} {percent}%";
        format-icons = [ "" "" "" ];
      };
    }];

    style = ''
      * {
        font-family: "Iosevka", "Symbols Nerd Font";
        font-size: 13px;
        min-height: 0;
      }
      window#waybar {
        background-color: #1D232F;
        color: #CFDFDF;
        border-bottom: 2px solid #00FFFF;
      }
      .modules-left, .modules-center, .modules-right {
        padding: 0 8px;
      }
      #workspaces button {
        padding: 0 6px;
        color: #8C98A6;
        border: none;
        border-bottom: 2px solid transparent;
      }
      #workspaces button.active {
        color: #00FFFF;
        border-bottom-color: #00FFFF;
      }
      #clock { color: #00FFFF; }
      #cpu, #memory, #battery, #backlight, #network, #wireplumber { color: #8C98A6; }
      #tray { color: #CFDFDF; }
    '';
  };
}
