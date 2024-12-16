{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      plover.with-plugins (ps: [
      ])
    ];
  };

}
