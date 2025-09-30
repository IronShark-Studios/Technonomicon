{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      nodejs
    ];

    sessionPath = [
      "$HOME/.npm-packages/bin"
    ];
  };
}
