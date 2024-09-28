{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      obs-studio
      xdg-desktop-portal-hyprland
      slurp
    ];
  };
}
