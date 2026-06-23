{ inputs, ... }: {
  flake.nixosModules.Tn-backup = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      borgbackup
      btrbk
      snapper
    ];

    services.btrbk.instances.btrbk = {
      onCalendar = "daily";
      settings = {
        snapshot_preserve_min = "2d";
        snapshot_preserve     = "7d 4w 3m";
        volume."/" = {
          subvolume."@home" = {};
        };
      };
    };

    services.snapper.configs.root = {
      SUBVOLUME = "/";
      ALLOW_USERS = [ "xin" ];
      TIMELINE_CREATE = true;
      TIMELINE_CLEANUP = true;
      TIMELINE_LIMIT_HOURLY = 6;
      TIMELINE_LIMIT_DAILY = 7;
      TIMELINE_LIMIT_WEEKLY = 4;
      TIMELINE_LIMIT_MONTHLY = 3;
    };

    services.snapper.configs.home = {
      SUBVOLUME = "/home";
      ALLOW_USERS = [ "xin" ];
      TIMELINE_CREATE = true;
      TIMELINE_CLEANUP = true;
      TIMELINE_LIMIT_HOURLY = 6;
      TIMELINE_LIMIT_DAILY = 14;
      TIMELINE_LIMIT_WEEKLY = 8;
      TIMELINE_LIMIT_MONTHLY = 6;
    };
  };
}
