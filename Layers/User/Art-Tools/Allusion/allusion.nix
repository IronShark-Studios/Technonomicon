{ pkgs, fetchurl }:

let
  pname = "allusion";
  version = "1.11.1";

  src =./Allusion-1.0.0-rc.10.AppImage;

in

pkgs.runCommand "allusion" {
  buildInputs = with pkgs; [ appimage-run ];
} ''
  mkdir -p $out/bin
  cat <<-EOF > $out/bin/allusion
  #!/bin/sh
  ${pkgs.appimage-run}/bin/appimage-run ${src}
  EOF
  chmod +x $out/bin/allusion
''
