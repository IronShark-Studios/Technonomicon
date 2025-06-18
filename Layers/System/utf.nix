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
    supportedLocales = [ "en_US.UTF-8/UTF-8" "zh_CN.UTF-8/UTF-8" "ko_KR.UTF-8/UTF-8" ];
    inputMethod = {
    enabled = "ibus";
    ibus = {
      engines = with pkgs.ibus-engines; [ libpinyin hangul ];
      };
    };
  };
}
