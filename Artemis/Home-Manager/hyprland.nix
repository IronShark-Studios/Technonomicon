{ inputs, outputs, lib, config, pkgs, ... }: {

  home.file = {
    "hyprland.conf" = {
      target = ".config/hypr/hyprland.conf";
      text = ''
        env = XCURSOR_SIZE,44
        env = QT_QPA_PLATFORMTHEME,qt5ct

        monitor = HDMI-A-2, 1920x1080@60, 0x0, 1

        exec-once = firefox
        $terminal = alacritty
        $fileManager = thunar
        $menu = rofi -show drun
        $editor = emacsclient -c
        $browser = firefox

        input {
            kb_layout = us
            kb_options = caps:swapescape
            follow_mouse = 2
            sensitivity = 0
            touchpad {
                natural_scroll = no
            }
        }

        general {
            gaps_in = 3
            gaps_out = 0
            border_size = 2
            col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
            col.inactive_border = rgba(595959aa)

            layout = dwindle

            allow_tearing = false
        }

        decoration {

            rounding = 0

            blur {
                enabled = true
                size = 3
                passes = 1
            }

            drop_shadow = yes
            shadow_range = 4
            shadow_render_power = 3
            col.shadow = rgba(1a1a1aee)
        }

        animations {
            enabled = yes

            bezier = myBezier, 0.05, 0.9, 0.1, 1.05

            animation = windows, 1, 7, myBezier
            animation = windowsOut, 1, 7, default, popin 80%
            animation = border, 1, 10, default
            animation = borderangle, 1, 8, default
            animation = fade, 1, 7, default
            animation = workspaces, 1, 6, default
        }

        dwindle {
            # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
            pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
            preserve_split = yes # you probably want this
        }

        master {
            # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
            new_is_master = true
        }

        gestures {
            # See https://wiki.hyprland.org/Configuring/Variables/ for more
            workspace_swipe = off
        }

        misc {
            disable_hyprland_logo = 1
            mouse_move_enables_dpms = true
            key_press_enables_dpms = true
        }


        # See https://wiki.hyprland.org/Configuring/Keywords/ for more
        $mainMod = SUPER

        # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
        bind =, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+
        bind =, XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-
        bind =, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        bind = $mainMod, P, exec, $terminal
        bind = $mainMod, R, exec, $fileManager
        bind = $mainMod, T, exec, $menu
        bind = $mainMod, S, exec, $browser
        bind = $mainMod, F, exec, $editor
        bind = $mainMod, Q, exec, waylock -init-color 0x000000 -input-color 0x0a6e73 -fail-color 0x000000 & systemctl suspend
        bind = $mainMod, G, exec, hyprshot -m region --clipboard-only
        bind = $mainMod, D, killactive
        bind = $mainMod, C, exit
        bind = $mainMod, V, togglefloating
        bind = $mainMod, Z, pseudo, # dwindle
        bind = $mainMod, J, togglesplit, # dwindle

        # Move focus with mainMod + arrow keys
        bind = $mainMod, left, movefocus, l
        bind = $mainMod, right, movefocus, r
        bind = $mainMod, up, movefocus, u
        bind = $mainMod, down, movefocus, d

        # Switch workspaces with mainMod + [0-9]
        bind = $mainMod, 1, workspace, 1
        bind = $mainMod, 2, workspace, 2
        bind = $mainMod, 3, workspace, 3
        bind = $mainMod, 4, workspace, 4
        bind = $mainMod, 5, workspace, 5
        bind = $mainMod, 6, workspace, 6
        bind = $mainMod, 7, workspace, 7
        bind = $mainMod, 8, workspace, 8
        bind = $mainMod, 9, workspace, 9
        bind = $mainMod, 0, workspace, 10

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        bind = $mainMod SHIFT, 1, movetoworkspace, 1
        bind = $mainMod SHIFT, 2, movetoworkspace, 2
        bind = $mainMod SHIFT, 3, movetoworkspace, 3
        bind = $mainMod SHIFT, 4, movetoworkspace, 4
        bind = $mainMod SHIFT, 5, movetoworkspace, 5
        bind = $mainMod SHIFT, 6, movetoworkspace, 6
        bind = $mainMod SHIFT, 7, movetoworkspace, 7
        bind = $mainMod SHIFT, 8, movetoworkspace, 8
        bind = $mainMod SHIFT, 9, movetoworkspace, 9
        bind = $mainMod SHIFT, 0, movetoworkspace, 10

        # Example special workspace (scratchpad)
        bind = $mainMod, X, togglespecialworkspace, magic
        bind = $mainMod SHIFT, X, movetoworkspace, special:magic

        # Scroll through existing workspaces with mainMod + scroll
        bind = $mainMod, mouse_down, workspace, e+1
        bind = $mainMod, mouse_up, workspace, e-1

        # Move/resize windows with mainMod + LMB/RMB and dragging
        bindm = $mainMod, mouse:272, movewindow
        bindm = $mainMod, mouse:273, resizewindow
      '';
    };
  };

  home.packages = with pkgs; [
    mako
    waylock
    hyprshot
    hyprpicker
    wl-clipboard
  ];
}
