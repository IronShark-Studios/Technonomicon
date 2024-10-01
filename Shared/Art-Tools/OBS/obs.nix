{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      obs-studio
      xdg-desktop-portal
      xdg-desktop-portal-hyprland
      slurp
      grim
      vlc
    ];
  };
}
