{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      cura-appimage
    ];
  };
}
