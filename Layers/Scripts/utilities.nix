{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."utilities.nix" = {
    target = "scripts/utilities.sh";
    source = ./utilities.sh;
  };
}
