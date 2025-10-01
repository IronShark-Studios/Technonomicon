{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      nodejs
      python3
    ];

    sessionPath = [
      "$HOME/.npm-packages/bin"
    ];
  };
}
