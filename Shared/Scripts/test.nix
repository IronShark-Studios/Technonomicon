{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."test.nix" = {
    target = "scripts/test.sh";
    text = ''
      #!/bin/sh

      cd ~tn
      git add .
      sudo nixos-rebuild test --flake .#$HOSTNAME &&
      echo
      echo System Generation $NIXOS_GENERATION Temporarily Active.
      cd -
    '';
  };
}
