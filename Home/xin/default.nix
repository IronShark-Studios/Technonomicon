{ inputs, ... }: {
  flake.nixosModules.Home-xin = { ... }: {
    imports = [ inputs.home-manager.nixosModules.home-manager ];

    home-manager = {
      useGlobalPkgs    = true;
      useUserPackages  = true;
      extraSpecialArgs = { inherit inputs; };
      backupFileExtension = "backup";
      users.xin = {
        imports = [
          ./_shell.nix
          ./_git.nix
          ./_hyprland.nix
          ./_neovim.nix
          ./_taskwarrior.nix
          ./_mail.nix
          ./_rclone.nix
          ./_persistence.nix
          ./_apps.nix
        ];
        home.stateVersion = "23.11";
      };
    };
  };
}
