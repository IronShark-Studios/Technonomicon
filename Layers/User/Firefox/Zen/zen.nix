{ pkgs, fetchurl }:

let
  pname = "zen";
  version = "1.0.1";

  src =./zen-specific.AppImage;

in

pkgs.runCommand "zen" {
  buildInputs = with pkgs; [ appimage-run ];
} ''
  mkdir -p $out/bin
  cat <<-EOF > $out/bin/zen
  #!/bin/sh
  ${pkgs.appimage-run}/bin/appimage-run ${src}
  EOF
  chmod +x $out/bin/zen
''
