{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."rebuild.nix" = {
    target = "scripts/rebuild.sh";
    text = ''
      #!/bin/sh

      git switch Build-Logs
      git pull --ff-only
      git add .
      git status
      sudo nixos-rebuild switch --impure --flake .#$HOSTNAME
      git commit -m "$HOST Rebuild: $NIXOS_GENERATION"
      git push
      git switch main
      echo
      echo System Generation $NIXOS_GENERATION Active.
    '';
  };
}
