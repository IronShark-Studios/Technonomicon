{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./tridactyl.nix
    ./userChrome.nix
    ./userPolicies.nix
  ];

  home.packages = with pkgs; [
  ];

  programs.qutebrowser = {
    enable = true;
  };

  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ pkgs.tridactyl-native ];
  };

  programs.chromium = {
    enable = false;
  };
}
