{ self, inputs, ... }: {
  flake.nixosConfigurations.Kvasir = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";

    specialArgs = {
      inherit inputs;
      pkgs-stable = import inputs.nixpkgs-stable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    };

    modules = [
      ./_hardware-configuration.nix

      inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t480s

      inputs.hjem.nixosModules.hjem

      self.nixosModules.core-settings
      self.nixosModules.desktop-feature
      self.nixosModules.editor-feature
      self.nixosModules.web-browsers-feature
      self.nixosModules.network-feature

      ({ pkgs, ... }: {
        system.stateVersion = "23.11";
        boot.loader.systemd-boot.enable = true;
        boot.loader.efi.canTouchEfiVariables = true;

        environment.etc.secrets.source = ../../Secrets/_xin-usrPasswd.nix;

        networking.hostName = "Kvasir";

        users = {
          mutableUsers = false;

          users.xin = {
            isNormalUser = true;
            hashedPasswordFile = "/etc/secrets/xin-usrPasswd.nix";
            shell = pkgs.bash;
            extraGroups = [
              "wheel"
              "docker"
              "ydotool"
              "scanner"
              "lp"
              "uinput"
              "input"
              "dialout"
              "plugdev"
            ];
          };
        };
      })
    ];
  };
}
