{ pkgs, fetchurl }:

let
  pname = "sabaki";
  version = "0.51.0";

  src =./sabaki-v0.51.0-linux-x64.AppImage;

in

pkgs.runCommand "sabaki" {
  buildInputs = with pkgs; [ appimage-run ];
} ''
  mkdir -p $out/bin
  cat <<-EOF > $out/bin/sabaki
  #!/bin/sh
  ${pkgs.appimage-run}/bin/appimage-run ${src}
  EOF
  chmod +x $out/bin/sabaki
''
