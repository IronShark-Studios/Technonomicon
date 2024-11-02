{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      inkscape-with-extensions
    ];
  };
}
