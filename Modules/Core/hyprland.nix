{ inputs, ... }: {
  flake.nixosModules.Tn-hyprland = { pkgs, ... }: {

    programs.hyprland.enable = true;

    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
    xdg.portal.configPackages = [ pkgs.xdg-desktop-portal-hyprland ];

    home-manager.users.xin.home.file.".config/hypr/hyprland.conf".text = ''
      monitor=,preferred,auto,1

      $mod = SUPER
      $terminal = ghostty

      input {
        kb_layout = us
        touchpad {
          natural_scroll = true
        }
      }

      general {
        layout = dwindle
      }

      bind = $mod, Return, exec, $terminal
      bind = $mod SHIFT, Q, killactive
      bind = $mod SHIFT, E, exit
      bind = $mod, F, fullscreen

      bind = $mod, H, movefocus, l
      bind = $mod, J, movefocus, d
      bind = $mod, K, movefocus, u
      bind = $mod, L, movefocus, r

      bind = $mod SHIFT, H, movewindow, l
      bind = $mod SHIFT, J, movewindow, d
      bind = $mod SHIFT, K, movewindow, u
      bind = $mod SHIFT, L, movewindow, r

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

      bindm = $mod, mouse:272, movewindow
      bindm = $mod, mouse:273, resizewindow
    '';
  };
}
