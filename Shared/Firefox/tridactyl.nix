{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      tridactyl-native
    ];

    file."tridactyl.nix" = {
      target = ".config/tridactyl/tridactylrc";
      text = ''
        bind e scrollline -10
        bind n scrollline 10
      '';
      };
  };
}
