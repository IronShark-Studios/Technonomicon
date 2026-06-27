{ inputs, ... }: {
  flake.nixosModules.Tn-hyprland = { pkgs, ... }:
  let
    toggleGrimoire = pkgs.writeShellScript "toggle-grimoire" ''
      if ${pkgs.hyprland}/bin/hyprctl clients -j \
          | ${pkgs.jq}/bin/jq -e '.[] | select(.class == "grimoire-inbox")' > /dev/null 2>&1; then
        ${pkgs.hyprland}/bin/hyprctl dispatch togglespecialworkspace grimoire
      else
        ${pkgs.hyprland}/bin/hyprctl dispatch exec \
          "[workspace special:grimoire silent] ghostty --class=grimoire-inbox -e hx ~/Grimoire/Inbox.md"
      fi
    '';

    startupApps = pkgs.writeShellScript "hyprland-startup-apps" ''
      sleep 1
      ${pkgs.hyprland}/bin/hyprctl dispatch exec "[workspace special:obsidian silent] obsidian"
      ${pkgs.hyprland}/bin/hyprctl dispatch exec "[workspace special:discord silent] flatpak run com.discordapp.Discord"
      ${pkgs.hyprland}/bin/hyprctl dispatch exec "[workspace special:grimoire silent] ghostty --class=grimoire-inbox -e hx ~/Grimoire/Inbox.md"
    '';
  in {

    programs.hyprland.enable = true;
    programs.hyprlock.enable = true;

    xdg.portal.extraPortals  = [ pkgs.xdg-desktop-portal-hyprland ];
    xdg.portal.configPackages = [ pkgs.xdg-desktop-portal-hyprland ];

    environment.systemPackages = with pkgs; [
      anyrun
      hypridle
      bibata-cursors
      quickshell
      networkmanagerapplet
      udiskie
    ];

    home-manager.users.xin = {

      home.pointerCursor = {
        package    = pkgs.bibata-cursors;
        name       = "Bibata-Modern-Classic";
        size       = 24;
        gtk.enable = true;
        x11.enable = true;
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
            hl.exec_cmd("hypridle")
            hl.exec_cmd("quickshell")
            hl.exec_cmd("nm-applet --indicator")
            hl.exec_cmd("udiskie --tray")
            hl.exec_cmd("blueman-applet")

            hl.exec_cmd("${startupApps}")
          end)

          hl.config({
            input = {
              kb_layout    = "us",
              follow_mouse = 1,
              touchpad     = { natural_scroll = true, disable_while_typing = true },
            },
            general = {
              gaps_in     = 5,
              gaps_out    = 0,
              border_size = 2,
              col = {
                active_border   = "rgba(00ffffee)",
                inactive_border = "rgba(595959aa)",
              },
              layout = "scrolling",
            },
            decoration = {
              rounding = 8,
            },
            scrolling = {
              fullscreen_on_one_column = true,
            },
            cursor = {
              inactive_timeout = 0.5,
            },
            misc = {
              disable_hyprland_logo   = true,
              disable_splash_rendering = true,
              background_color        = "rgb(000000)",
            },
          })

          hl.bind(mainMod .. " + Return",    hl.dsp.exec_cmd("anyrun"))
          hl.bind(mainMod .. " + T",         hl.dsp.exec_cmd(terminal))
          hl.bind(mainMod .. " + D",         hl.dsp.window.close())
          hl.bind(mainMod .. " + Q",         hl.dsp.exec_cmd("hyprlock"))
          hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("systemctl poweroff"))
          hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exit())
          hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen())
          hl.bind(mainMod .. " + 0",         hl.dsp.exec_cmd("${toggleGrimoire}"))
          hl.bind(mainMod .. " + ALT + 1",   hl.dsp.exec_cmd("hyprctl dispatch togglespecialworkspace obsidian"))
          hl.bind(mainMod .. " + ALT + 9",   hl.dsp.exec_cmd("hyprctl dispatch togglespecialworkspace discord"))

          hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left"  }))
          hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down"  }))
          hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up"    }))
          hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))

          hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left"  }))
          hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down"  }))
          hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up"    }))
          hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

          for i = 1, 9 do
            hl.bind(mainMod .. " + " .. i,         hl.dsp.focus({ workspace = i }))
            hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
          end

          hl.bind("Print",            hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))
          hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))

          hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
          hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
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
            after_sleep_cmd  = hyprctl dispatch dpms on
          }

          listener {
            timeout    = 600
            on-timeout = bash -c '[ "$(cat /sys/class/power_supply/AC*/online 2>/dev/null | head -1)" = "0" ] && systemctl suspend'
          }
        '';

        ".config/quickshell/shell.qml".text = ''
          import Quickshell

          ShellRoot {
              Variants {
                  model: Quickshell.screens
                  delegate: Bar {
                      required property var modelData
                      screen: modelData
                  }
              }

              Notifications {}
          }
        '';

        ".config/quickshell/Bar.qml".text = ''
          pragma ComponentBehavior: Bound
          import Quickshell
          import Quickshell.Hyprland
          import Quickshell.Services.SystemTray
          import Quickshell.Services.Pipewire
          import QtQuick
          import QtQuick.Layouts

          PanelWindow {
              id: root
              required property ShellScreen screen

              anchors { top: true; left: true; right: true }
              implicitHeight: 36
              color: Qt.rgba(0.04, 0.04, 0.08, 0.92)

              Rectangle {
                  anchors { bottom: parent.bottom; left: parent.left; right: parent.right }
                  height: 1
                  color: Qt.rgba(0, 1, 1, 0.3)
              }

              RowLayout {
                  anchors { fill: parent; leftMargin: 8; rightMargin: 8 }
                  spacing: 4

                  Repeater {
                      model: Hyprland.workspaces
                      delegate: Item {
                          id: wsBtn
                          required property HyprlandWorkspace modelData
                          implicitWidth: 28
                          implicitHeight: 28

                          Rectangle {
                              anchors.centerIn: parent
                              width: 22; height: 22; radius: 4
                              color: wsBtn.modelData === Hyprland.focusedWorkspace
                                  ? "#00ffff" : "transparent"

                              Text {
                                  anchors.centerIn: parent
                                  text: wsBtn.modelData.id
                                  color: wsBtn.modelData === Hyprland.focusedWorkspace
                                      ? "#0a0a14" : "#555555"
                                  font.pixelSize: 12
                                  font.family: "JetBrains Mono"
                                  font.bold: true
                              }

                              MouseArea {
                                  anchors.fill: parent
                                  onClicked: wsBtn.modelData.activate()
                              }
                          }
                      }
                  }

                  Item { Layout.fillWidth: true }

                  Text {
                      id: clockText
                      color: "#cdd6f4"
                      font.pixelSize: 13
                      font.family: "JetBrains Mono"
                      font.bold: true

                      Timer {
                          interval: 1000; running: true; repeat: true
                          onTriggered: clockText.text = Qt.formatDateTime(new Date(), "ddd MMM dd  HH:mm")
                      }
                      Component.onCompleted: text = Qt.formatDateTime(new Date(), "ddd MMM dd  HH:mm")
                  }

                  Item { Layout.fillWidth: true }

                  Text {
                      id: volText
                      color: (Pipewire.defaultAudioSink?.audio?.muted ?? false) ? "#555555" : "#cdd6f4"
                      font.pixelSize: 12
                      font.family: "JetBrains Mono"
                      text: {
                          const s = Pipewire.defaultAudioSink
                          if (!s || !s.audio) return "?"
                          return s.audio.muted ? "mute" : Math.round(s.audio.volume * 100) + "%"
                      }

                      MouseArea {
                          anchors.fill: parent
                          acceptedButtons: Qt.LeftButton
                          onClicked: {
                              const s = Pipewire.defaultAudioSink
                              if (s?.audio) s.audio.muted = !s.audio.muted
                          }
                          onWheel: wheel => {
                              const s = Pipewire.defaultAudioSink
                              if (!s?.audio) return
                              const delta = wheel.angleDelta.y > 0 ? 0.05 : -0.05
                              s.audio.volume = Math.max(0.0, Math.min(1.5, s.audio.volume + delta))
                          }
                      }
                  }

                  Repeater {
                      model: SystemTray.items
                      delegate: Item {
                          id: trayItem
                          required property SystemTrayItem modelData
                          implicitWidth: 22; implicitHeight: 22

                          Image {
                              anchors.centerIn: parent
                              width: 16; height: 16
                              source: trayItem.modelData.icon
                              smooth: true
                          }

                          MouseArea {
                              anchors.fill: parent
                              acceptedButtons: Qt.LeftButton | Qt.RightButton
                              onClicked: mouse => {
                                  if (mouse.button === Qt.RightButton)
                                      trayItem.modelData.secondaryActivate()
                                  else
                                      trayItem.modelData.activate()
                              }
                          }
                      }
                  }
              }
          }
        '';

        ".config/quickshell/Notifications.qml".text = ''
          pragma ComponentBehavior: Bound
          import Quickshell
          import Quickshell.Services.Notifications
          import QtQuick
          import QtQuick.Layouts

          Scope {
              NotificationServer {
                  id: server
                  keepOnReload: true
              }

              PanelWindow {
                  anchors { top: true; right: true }
                  margins { top: 44; right: 8 }

                  visible: server.trackedNotifications.length > 0
                  implicitWidth: 360
                  implicitHeight: Math.max(notifCol.implicitHeight + 16, 1)
                  color: "transparent"

                  ColumnLayout {
                      id: notifCol
                      anchors { fill: parent; margins: 8 }
                      spacing: 8

                      Repeater {
                          model: server.trackedNotifications
                          delegate: Rectangle {
                              id: notif
                              required property Notification modelData

                              Layout.fillWidth: true
                              implicitHeight: notifInner.implicitHeight + 20
                              color: Qt.rgba(0.04, 0.04, 0.08, 0.95)
                              border.color: "#00ffff"
                              border.width: 1
                              radius: 8

                              ColumnLayout {
                                  id: notifInner
                                  anchors { fill: parent; margins: 10 }
                                  spacing: 4

                                  Text {
                                      text: notif.modelData.summary
                                      color: "#cdd6f4"
                                      font.pixelSize: 13
                                      font.family: "JetBrains Mono"
                                      font.bold: true
                                      Layout.fillWidth: true
                                      elide: Text.ElideRight
                                  }

                                  Text {
                                      text: notif.modelData.body
                                      color: "#999999"
                                      font.pixelSize: 12
                                      font.family: "JetBrains Mono"
                                      Layout.fillWidth: true
                                      wrapMode: Text.WordWrap
                                      visible: text.length > 0
                                  }
                              }

                              MouseArea {
                                  anchors.fill: parent
                                  onClicked: notif.modelData.dismiss()
                              }

                              Timer {
                                  interval: notif.modelData.expireTimeout > 0
                                      ? notif.modelData.expireTimeout : 3000
                                  running: true
                                  onTriggered: notif.modelData.dismiss()
                              }
                          }
                      }
                  }
              }
          }
        '';

        ".config/anyrun/config.ron".text = ''
          Config(
              x: Fraction(0.5),
              y: Fraction(0.3),
              width: Absolute(800),
              hide_icons: false,
              ignore_exclusive_zones: false,
              layer: Overlay,
              hide_plugin_info: true,
              close_on_click: false,
              show_results_immediately: false,
              max_entries: Some(8),
              plugins: [
                  "${pkgs.anyrun}/lib/libapplications.so",
                  "${pkgs.anyrun}/lib/librink.so",
                  "${pkgs.anyrun}/lib/libshell.so",
              ],
          )
        '';
      };
    };
  };
}
