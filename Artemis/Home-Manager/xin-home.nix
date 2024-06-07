{ inputs, outputs, lib, config, pkgs, ... }: {
  imports = [
    ./hyprland.nix
    ../../Shared/Emacs/emacs.nix
    ../../Shared/XDG/user-dirs.nix
    ../../Shared/Terminal/terminal.nix
    ../../Shared/Firefox/firefox.nix
    ../../Shared/System-Tools/systemTools.nix
  ];

  programs.home-manager.enable = true;

  home = {
    username = "xin";
    homeDirectory = "/home/xin";
    stateVersion = "24.05";
  };

  nixpkgs = {
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.static-nxpkgs
      outputs.overlays.static-hmpkgs
      inputs.emacs-community.overlay
    ];

    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  systemd.user.startServices = "sd-switch";
}
