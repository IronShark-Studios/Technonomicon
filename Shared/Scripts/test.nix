{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."test.nix" = {
    target = "scripts/test.sh";
    text = ''
      #!/bin/sh

      git add .
      sudo nixos-rebuild test --impure --flake .#$HOSTNAME &&
      echo
      echo System Generation $NIXOS_GENERATION Temporarily Active.
    '';
  };
}
