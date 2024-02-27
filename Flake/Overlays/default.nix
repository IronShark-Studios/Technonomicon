# This file defines overlays
{ inputs, ... }:
{
  # This one brings our custom packages from the 'pkgs' directory
  additions = final: _prev: import ../Packages { pkgs = final; };

  # This one contains whatever you want to overlay
  # You can change versions, add patches, set compilation flags, anything really.
  # https://nixos.wiki/wiki/Overlays
  modifications = final: prev: {
    # example = prev.example.overrideAttrs (oldAttrs: rec {
    # ...
    # });
  };

  # When applied, the unstable nixpkgs set (declared in the flake inputs) will
  # be accessible through 'pkgs.static-nxpkgs'
  static-nxpkgs = final: _prev: {
    nx-static = import inputs.nixpkgs-static {
      system = final.system;
      config.allowUnfree = true;
    };
  };

 # Creates a subset of home-manager pkgs tied to a specific release.
 # Accessible with 'pkgs.static-hmpkgs'.
  static-hmpkgs = final: _prev: {
    hm-static = import inputs.home-manager-static {
      system = final.system;
      config.allowUnfree = true;
    };
  };
}
