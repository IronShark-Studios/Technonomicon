{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    username = "xin";
    homeDirectory = "/home/xin";
    stateVersion = "23.11";
  };

  imports = [
    ./hyprland.nix
    ./waybar.nix
    ../Layers/User/xdg.nix
    ../Layers/User/Terminal/terminal.nix
    ../Layers/User/Firefox/firefox.nix
    ../Layers/User/System-Tools/systemTools.nix
    ../Layers/User/Social-Tools/socialTools.nix
    ../Layers/User/Accounting-Tools/accountingTools.nix
    ../Layers/User/Art-Tools/artTools.nix
    ../Layers/User/Knowledge-Tools/knowledge.nix
    ../Layers/User/Baduk-Tools/baduk.nix
    ../Layers/Secrets/secrets.nix
    inputs.plover-flake.homeManagerModules.plover
  ];

  programs.home-manager.enable = true;

  
  programs.plover = {
    enable = true;
    package =
    inputs.plover-flake.packages.${pkgs.stdenv.hostPlatform.system}.plover-full;
  };

  nixpkgs = {
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.static-nxpkgs
      outputs.overlays.static-hmpkgs
    ];

    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  wayland.windowManager.hyprland.plugins = [
    # pkgs.hyprlandPlugins.hypr-dynamic-cursors
  ];

  systemd.user.startServices = "sd-switch";
}
