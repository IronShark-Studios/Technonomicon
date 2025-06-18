{ inputs, outputs, lib, config, pkgs, ... }: {

  time.timeZone = "America/Detroit";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };
    supportedLocales = [ 
    "en_US.UTF-8/UTF-8" 
    "zh_CN.UTF-8/UTF-8" 
    "ko_KR.UTF-8/UTF-8" 
    ];

    inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-gtk
        fcitx5-chinese-addons
        fcitx5-hangul
        fcitx5-configtool
	fcitx5-Black-Simplicity
        ];
      };
    };
  };
}
