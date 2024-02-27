{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."mv-to-tmp.nix" = {
    target = "scripts/mv-to-tmp.sh";
    text = ''
      #!/bin/sh

      mv-to-tmp() {
        for file in "$@"; do
          mv "$file" /tmp || echo "Error: Failed to move '$file' to /tmp."
        done
      }

        mv-to-tmp "$@"
    '';
  };
}
