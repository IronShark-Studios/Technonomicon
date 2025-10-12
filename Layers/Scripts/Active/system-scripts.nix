{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."rebuild.nix" = {
    target = "scripts/rebuild.sh";
    text = ''
      #!/bin/sh

      cd /home/xin/Projects/Technonomicon
      git add .
      git status
      echo "Change Log:"
      read change_log
      sudo nixos-rebuild switch --impure --flake .#$HOSTNAME
      git commit -m "$change_log $HOST: $NIXOS_GENERATION"
      git push 
      echo
      echo System Generation $NIXOS_GENERATION Active.
      cd -
    '';
  };


  environment.etc."test.nix" = {
    target = "scripts/test.sh";
    text = ''
      #!/bin/sh

      cd /home/xin/Projects/Technonomicon
      git add .
      sudo nixos-rebuild test --impure --flake .#$HOSTNAME &&
      echo
      echo System Generation $NIXOS_GENERATION Temporarily Active.
      cd -
    '';
  };


  environment.etc."upgrade.nix" = {
    target = "scripts/upgrade.sh";
    text = ''
      #!/bin/sh

      cd /home/xin/Projects/Technonomicon
      git add .
      git commit -m "Pre-Upgrade: $HOSTNAME $NIXOS_GENERATION"
      git push
      sudo nix flake update
      sudo nixos-rebuild switch --impure --flake .#$HOSTNAME --upgrade
      git add .
      git commit -m "Upgraded: $HOSTNAME $NIXOS_GENERATION"
      git push
      cd -
    '';
  };

  environment.etc."clean.nix" = {
    target = "scripts/clean.sh";
    text = ''
      #!/bin/sh
      
      rm /home/xin/Grimoire/.trash/* 
      trash-empty -f
      sudo nix-collect-garbage --delete-old
    '';
  };

  environment.etc."Tn-command" = {
    target = "scripts/tn-command.sh";
    text = ''
      tn () {
        case "$1" in
          clean)
            bash /etc/scripts/clean.sh
            ;;
          test)
            bash /etc/scripts/test.sh
            ;;
          upgrade)
            bash /etc/scripts/upgrade.sh
            ;;
          rebuild)
            bash /etc/scripts/rebuild.sh
            ;;
          *)
            echo "Error: Invalid argument '$1'."
            return 1 # Exit with an error status
            ;;
        esac
      }
    '';
  };
}
