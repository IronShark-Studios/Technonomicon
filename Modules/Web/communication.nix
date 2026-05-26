{ inputs, ... }: {
  flake.nixosModules.Tn-network = { pkgs, pkgs-stable, ... }: {

    hjem.users.xin = {
      enable = true;
      files = {
        ".config/discord/settings.json".text = builtins.toJSON {
          SKIP_HOST_UPDATE = true;
        };
      };
    };

    systemd.user.services.mako = {
      description = "Mako notification daemon for EWM layer-shell support";
      wantedBy = [ "graphical-session.target" ];
      serviceConfig = {
        ExecStart = "${pkgs.mako}/bin/mako";
        Restart = "on-failure";
      };
    };

    environment.systemPackages = with pkgs; [
      #  slack
      #  discord
      newsflash
      mako
    ];
  };
}
