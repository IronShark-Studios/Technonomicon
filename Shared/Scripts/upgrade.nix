{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."upgrade.nix" = {
    target = "scripts/upgrade.sh";
    text = ''
      #!/bin/sh

      cd ~/.config/emacs
      git pull --ff
      cd ~/Projects/Technonomicon

      git switch Build-Logs
      git pull --ff-only
      git add .
      git commit -m "Pre-Upgrade: $HOSTNAME $NIXOS_GENERATION"
      git switch main
      sudo nix flake update
      sudo nixos-rebuild switch --flake .#$HOSTNAME --upgrade
      git add .
      git commit -m "Upgraded: $HOSTNAME $NIXOS_GENERATION"
      git push
    '';
  };
}
