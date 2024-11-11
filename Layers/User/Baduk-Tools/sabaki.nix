{ pkgs, fetchurl }:

let
  pname = "sabaki";
  version = "1.11.1";

  src =./sabaki-v0.52.2-linux-x64.AppImage;

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
