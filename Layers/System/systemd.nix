{ inputs, outputs, lib, config, pkgs, ...}: {

  systemd.sleep.settings.Sleep = {
    HandleSuspend = "ignore";
  };

  systemd.services.ModemManager.enable = false;
}
