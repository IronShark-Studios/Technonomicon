{ inputs, ... }: {
  flake.nixosModules.desktop-feature = { pkgs, pkgs-stable, ... }: {
    imports = [ inputs.ewm.nixosModules.default ];
    programs.ewm.enable = true;

    services.greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd ${inputs.ewm.packages.${pkgs.system}.default}/bin/ewm";
          user = "greeter";
        };
      };
    };

    environment.systemPackages = with pkgs; [
      alacritty
      wl-clipboard
    ];
  };
}
