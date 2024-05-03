{
  description = "Configurations for personal computers.";

  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-static.url = "github:nixos/nixpkgs/nixos-23.05";

    home-manager.url = "github:nix-community/home-manager";
    home-manager-static.url = "github:nix-community/home-manager/release-23.05";

    nixos-hardware.url = "github:nixos/nixos-hardware";

    nur.url = "github:nix-community/NUR";

    sops-nix.url = "github:Mic92/sops-nix";

    emacs-community.url = "github:nix-community/emacs-overlay";
  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, nur, sops-nix, emacs-community, ... }@inputs:
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
        nur.nixosModules.nur
        sops-nix.nixosModules.sops
        home-manager.nixosModules.home-manager
        ./Thanatos/NixOS/configuration.nix
      ];
    };
    Artemis = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs outputs; };
      modules = [
        nur.nixosModules.nur
        sops-nix.nixosModules.sops
        home-manager.nixosModules.home-manager
        ./Artemis/NixOS/configuration.nix
      ];
    };
  };
};
}
