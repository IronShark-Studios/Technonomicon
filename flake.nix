{
  description = "Configurations for personal computers.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";

    nixos-hardware.url = "github:nixos/nixos-hardware";

    plover-flake.url = "github:openstenoproject/plover-flake";
  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, ... }@inputs:
   let
      inherit (self) outputs;
      forAllSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
      ];
    in
    rec {

  overlays = import ./Flake/Overlays { inherit inputs; };
  nixosModules = import ./Flake/Modules/Nixos;
  homeManagerModules = import ./Flake/Modules/Home-Manager;

  nixosConfigurations = {

    Thanatos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs outputs; };
      modules = [
        home-manager.nixosModules.home-manager
        ./Thanatos/configuration.nix
      ];
    };

    Loki = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs outputs; };
      modules = [
        home-manager.nixosModules.home-manager
        ./Loki/configuration.nix
      ];
    };

  };
};
}
