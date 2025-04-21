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
base="${filename%.*}"       # Extract filename without extension
extension="${filename##*.}" # Extract the extension
new_number=""

if [[ "$base" =~ --([0-9]+)$ ]]; then
  # Found an existing number
  existing_number="${BASH_REMATCH[1]}"
  new_number=$((existing_number + 1))
  new_base="${base%--*}"
  new_filename="${new_base}--${new_number}.${extension}"
else
  # No existing number found
  new_filename="${base}--1.${extension}"
fi

if [ "$filename" != "$new_filename" ]; then
  mv "$filename" "$new_filename"
  echo "Renamed '$filename' to '$new_filename'"
else
  echo "Filename '$filename' already in the desired format (or no change needed)."
fi
    '';
  };
}
