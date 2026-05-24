{
  description = "Personal system configurations.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";

    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    hjem.url = "github:feel-co/hjem";
    hjem.inputs.nixpkgs.follows = "nixpkgs";
    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";


    doom-emacs-unstraightened.url = "github:marienz/nix-doom-emacs-unstraightened";
    ewm.url = "git+https://codeberg.org/ezemtsov/ewm";
  };

  outputs = inputs@{ self, flake-parts, import-tree, ... }:
  flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [ "x86_64-linux" ];
    imports = [
      (import-tree ./Modules)
      (import-tree ./Hosts)
    ];
  };
}
