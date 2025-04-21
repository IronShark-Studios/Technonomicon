{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."sgf-increment.nix" = {
    target = "scripts/sgf-increment.sh";
    source = ./sgf-increment.sh;
  };
}
