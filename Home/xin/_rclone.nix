{ pkgs, ... }: {
  systemd.user.services.rclone-bisync = {
    Unit = {
      Description = "Bisync local ~/GDrive with Google Drive";
      After = [ "network-online.target" ];
      Wants = [ "network-online.target" ];
    };
    Service = {
      Type = "oneshot";
      ExecStart = "${pkgs.rclone}/bin/rclone bisync %h/GDrive gdrive: --transfers 8 --drive-chunk-size 128M";
    };
  };

  systemd.user.timers.rclone-bisync = {
    Unit.Description = "Run rclone bisync every 30 minutes";
    Timer = {
      OnBootSec       = "5min";
      OnUnitActiveSec = "30min";
      Persistent      = true;
    };
    Install.WantedBy = [ "timers.target" ];
  };
}
