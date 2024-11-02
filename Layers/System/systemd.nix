{ inputs, outputs, lib, config, pkgs, ...}: {

  systemd.sleep.extraConfig = ''
    HandleSuspend=ignore
  '';
}
