{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."upgrade.nix" = {
    target = "scripts/upgrade.sh";
    text = ''
      #!/bin/sh

      git add .
      git commit -m "Pre-Upgrade: $HOSTNAME $NIXOS_GENERATION"
      git push
      sudo nix flake update
      sudo nixos-rebuild switch --impure --flake .#$HOSTNAME --upgrade
      git add .
      git commit -m "Upgraded: $HOSTNAME $NIXOS_GENERATION"
      git push
    '';
  };
}
