{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."rebuild.nix" = {
    target = "scripts/rebuild.sh";
    text = ''
      #!/bin/sh

      git add .
      git status
      sudo nixos-rebuild switch --impure --flake .#$HOSTNAME
      git commit -m "$HOST Rebuild: $NIXOS_GENERATION"
      git push 
      echo
      echo System Generation $NIXOS_GENERATION Active.
    '';
  };
}
