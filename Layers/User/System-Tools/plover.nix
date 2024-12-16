{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
    plover.dev
    ];
  };

}
