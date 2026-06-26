{ inputs, ... }: {
  flake.nixosModules.Tn-communication = { pkgs, ... }: {

    imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

    home-manager.users.xin.home.file.".config/discord/settings.json".text = builtins.toJSON {
      SKIP_HOST_UPDATE = true;
    };

    services.flatpak = {
      enable = true;
      remotes = [{
        name     = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }];
      packages = [
        { appId = "com.discordapp.Discord"; origin = "flathub"; }
      ];
    };

    environment.systemPackages = with pkgs; [
      newsflash
    ];
  };
}
