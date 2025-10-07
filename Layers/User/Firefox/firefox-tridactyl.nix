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
        blacklist https://online-go.com/
        colorscheme shydactyl
        set hintfiltermode vimperator-reflow
        set hintchars lpnthvufesir
      '';
    };
  };
}
