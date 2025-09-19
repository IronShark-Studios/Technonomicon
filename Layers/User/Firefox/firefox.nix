{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./tridactyl.nix
    ./userChrome.nix
    ./userPolicies.nix
  ];

  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ pkgs.tridactyl-native ];
  };

  home.packages = with pkgs; [
  # chromium
  ];
}
