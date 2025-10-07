{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./firefox-tridactyl.nix
    ./firefox-userChrome.nix
    ./firefox-userPolicies.nix
  ];

  home.packages = with pkgs; [
  ];


  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ pkgs.tridactyl-native ];
  };

  programs.chromium = {
    enable = false;
  };

  programs.qutebrowser = {
    enable = true;
    loadAutoconfig = true;
    extraConfig =''
      config.set("colors.webpage.darkmode.enabled", True)
      config.set("colors.hints.bg.global", #539bf5)
    '';
  };

}
