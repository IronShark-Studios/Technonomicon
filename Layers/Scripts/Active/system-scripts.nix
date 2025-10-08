{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."rebuild.nix" = {
    target = "scripts/rebuild.sh";
    text = ''
      #!/bin/sh

      git add .
      git status
      echo "Change Log:"
      read change_log
      sudo nixos-rebuild switch --impure --flake .#$HOSTNAME
      git commit -m "$change_log $HOST: $NIXOS_GENERATION"
      git push 
      echo
      echo System Generation $NIXOS_GENERATION Active.
    '';
  };


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

  environment.etc."utilities.nix" = {
    target = "scripts/utilities.sh";
    source = ./utilities.sh;
  };


  environment.etc."start-up.nix" = {
    target = "scripts/start-up.sh";
    source = ./start-up.sh;
  };


  environment.etc."sabaki-2-anki.nix" = {
    target = "scripts/sabaki-2-anki.sh";
    source = ./sabaki-2-anki.sh;
  };
}
