{ pkgs, fetchurl }:

let
  pname = "WeiqiHub";
  version = "0.51.0";

  src =./WeiqiHub-0.1.8-x64.AppImage;

in

pkgs.runCommand "Fox" {
  buildInputs = with pkgs; [ appimage-run ];
} ''
  mkdir -p $out/bin
  cat <<-EOF > $out/bin/fox
  #!/bin/sh
  ${pkgs.appimage-run}/bin/appimage-run ${src}
  EOF
  chmod +x $out/bin/fox
''
