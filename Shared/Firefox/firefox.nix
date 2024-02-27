{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./tridactyl.nix
    ./userChrome.nix
    ./userPolicies.nix
  ];

  programs.firefox = {
    enable = true;
    package = pkgs.firefox.override {
      cfg.enableTridactylNative = true;
    };
  };
}
