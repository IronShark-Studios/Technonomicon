{ inputs, outputs, lib, config, pkgs, ... }: {

  services.blueman-applet = {
    enable = true;
  };
}
