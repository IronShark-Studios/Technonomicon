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

  ({ pkgs, ... }: {
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    networking.hostName = "t480s";

    users.users.xin = {
      isNormalUser = true;
      password = "temp";
      shell = pkgs.bash;
      extraGroups = [
        "wheel"
        "video"
        "seat"
        "networkmanager"
      ];
    };

    system.stateVersion = "23.11";
  })
];
  };
}
