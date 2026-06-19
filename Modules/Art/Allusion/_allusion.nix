{ pkgs, fetchurl }:

let
  version = "1.0.0-rc.10";
  src = ./_Allusion-1.0.0-rc.10.AppImage;
in

pkgs.runCommand "allusion" {} ''
  mkdir -p $out/bin
  cat > $out/bin/allusion << 'EOF'
  #!/bin/sh
  exec ${src}
  EOF
  chmod +x $out/bin/allusion
''
