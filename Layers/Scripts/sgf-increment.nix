{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."sgf-increment.nix" = {
    target = "scripts/sgf-increment.sh";
    text = ''
#! /bin/sh

if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

new_filename=$(echo "$filename" | rename 's/(--)?(\d*)(\.[^.]+$)/sprintf("--%d%s", $2 + 1, $3)/e' -n)

if [ "$filename" = "$new_filename" ]; then
  new_filename=$(echo "$filename" | rename 's/(\.[^.]+$)/--1&/' -n)
fi

mv "$filename" "$new_filename"

echo "Incremented '$filename' to '$new_filename'"

    '';
  };
}
