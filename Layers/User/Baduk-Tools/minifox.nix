{ pkgs, fetchurl }:

let
  pname = "minifox";
  version = "0.14";

  src =./minifox.AppImage;

in

pkgs.runCommand "minifox" {
  buildInputs = with pkgs; [ appimage-run ];
} ''
  mkdir -p $out/bin
  cat <<-EOF > $out/bin/minifox
  #!/bin/sh
  ${pkgs.appimage-run}/bin/appimage-run ${src}
  EOF
  chmod +x $out/bin/minifox
''
