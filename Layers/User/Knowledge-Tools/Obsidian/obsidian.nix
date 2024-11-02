{ pkgs, fetchurl }:

let
  pname = "obsidian";
  version = "1.7.4";

  src =./Obsidian-1.7.4.AppImage;

in

pkgs.runCommand "obsidian" {
  buildInputs = with pkgs; [ appimage-run ];
} ''
  mkdir -p $out/bin
  cat <<-EOF > $out/bin/obsidian
  #!/bin/sh
  ${pkgs.appimage-run}/bin/appimage-run ${src}
  EOF
  chmod +x $out/bin/obsidian
''
