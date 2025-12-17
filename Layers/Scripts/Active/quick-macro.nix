{ inputs, outputs, lib, config, pkgs, ... }: {

  environment.etc."quick-macro" = {
    target = "scripts/quick-macro.sh";
    text = ''
    '';
  };
}
