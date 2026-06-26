{ inputs, ... }: {
  flake.nixosModules.Tn-communication = { pkgs, ... }: {

    home-manager.users.xin.home.file.".config/discord/settings.json".text = builtins.toJSON {
      SKIP_HOST_UPDATE = true;
    };

    environment.systemPackages = with pkgs; [
      newsflash
    ];
  };
}
