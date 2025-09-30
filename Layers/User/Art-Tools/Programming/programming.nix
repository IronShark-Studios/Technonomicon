{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      nodejs_24
    ];
  };
}
