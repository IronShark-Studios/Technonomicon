{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."update-archives.nix" = {
    target = "scripts/update-archives.sh";
    text = ''
      #!/bin/sh

      cd ~

      cd ~/Apocrypha
      echo "Syncing Apocrypha"
      echo
      git status
      git add .
      git commit -m "General Update"
      git push
      git status
      echo
      echo
      cd ~/Feronomicon
      echo "Syncing Feronomicon"
      echo
      git status
      git add .
      git commit -m "General Update"
      git push
      git status
      echo
      echo
      cd ~/Grimoire
      echo "Syncing Grimoire"
      echo
      git status
      git add .
      git commit -m "General Update"
      git push
      git status
      echo
      echo
      echo "All Archives Synced"
    '';
  };
}
