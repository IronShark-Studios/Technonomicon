{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      # gimp-with-plugins
    ];
  };
}
