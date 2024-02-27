{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      visidata
    ];

    # file."visidataConfig" = {
    #   target = ".config/visidata/config.py";
    #   text = ''
    #     '';
    #   };
  };
}
