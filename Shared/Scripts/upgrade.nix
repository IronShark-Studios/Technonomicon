{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."upgrade.nix" = {
    target = "scripts/upgrade.sh";
    text = ''
      #!/bin/sh

      cd ~/.config/emacs
      git pull --ff-only
      cd ~/Projects/Technonomicon

      git add .
      git commit -m "Pre-Upgrade: $HOSTNAME $NIXOS_GENERATION"
      git push origin HEAD
      sudo nix flake update
      sudo nixos-rebuild switch --impure --flake .#$HOSTNAME --upgrade
      git add .
      git commit -m "Upgraded: $HOSTNAME $NIXOS_GENERATION"
      git push
    '';
  };
}
