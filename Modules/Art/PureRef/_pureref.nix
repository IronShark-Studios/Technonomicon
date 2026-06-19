{ pkgs, fetchurl }:

let
  version = "2.0.3";
  src = ./_PureRef-2.0.3_x64.Appimage;
in

pkgs.runCommand "pureref" {} ''
  mkdir -p $out/bin
  cat > $out/bin/pureref << 'EOF'
  #!/bin/sh
  exec ${src}
  EOF
  chmod +x $out/bin/pureref
''
