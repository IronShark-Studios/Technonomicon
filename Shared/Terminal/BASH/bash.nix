{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.bash = {
    enable = true;

    profileExtra = ''
      xdg-mime default org-protocol.desktop x-scheme-handler/org-protocol &
      udiskie --no-notify --tray &
      polybar thanatos &
      nm-applet &
      pnmixer &
      xrandr --output eDP-1 --off
      emacs
    '';
  };
}
