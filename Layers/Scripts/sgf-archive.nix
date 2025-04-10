{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."sgf-archive.nix" = {
    target = "scripts/sgf-archive.sh";
    source = ./sgf-archive.sh;
  };
}
