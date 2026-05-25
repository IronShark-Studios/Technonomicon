{ self, inputs, config, ... }: {
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
      inputs.sops-nix.nixosModules.sops
      inputs.hjem.nixosModules.hjem

      self.nixosModules.core-settings
      self.nixosModules.desktop-feature
      self.nixosModules.editor-feature
      self.nixosModules.web-browsers-feature
      self.nixosModules.network-feature

      ({ pkgs, config, ... }: {
        system.stateVersion = "23.11";

        boot.loader.systemd-boot.enable = true;
        boot.loader.efi.canTouchEfiVariables = true;

        sops.secrets.xin-password.neededForUsers = true;
        sops.age.sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];
        sops.defaultSopsFile = "${inputs.self}/_secrets.yaml";
        sops.defaultSopsFormat = "yaml";

        networking.hostName = "Kvasir";

        hjem = {
          extraModules = [ inputs.hjem-impure.hjemModules.default ];
          users.xin = {
            impure.enable = true;
          };
        };

        users = {
          mutableUsers = false;

          users.xin = {
            isNormalUser = true;
            hashedPasswordFile = config.sops.secrets.xin-password.path;
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
