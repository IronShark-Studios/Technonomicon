{ inputs, outputs, lib, config, pkgs, ... }: {

  services.udiskie = {
    enable = true;
    notify = false;
  };
}
