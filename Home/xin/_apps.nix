{ inputs, ... }: {
  # Surfingkeys config
  home.file.".config/surfingkeys/config.js".source =
    "${inputs.self}/Modules/Web/_surfingkeys.js";

  # Discord: skip host update check
  home.file.".config/discord/settings.json".text = builtins.toJSON {
    SKIP_HOST_UPDATE = true;
  };

  # Mako notification daemon
  services.mako = {
    enable = true;
    defaultTimeout = 3000;
  };
}
