{ inputs, outputs, lib, config, pkgs, ...}: {

  systemd.sleep.extraConfig = ''
    HandleSuspend=ignore
  '';

  systemd.services.ModemManager.enable = false;
}
