{ inputs, outputs, lib, config, pkgs, ... }: {

  services.flameshot = {
    enable = true;
    settings = {
    };
  };
}
