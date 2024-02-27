{ inputs, outputs, lib, config, pkgs, ... }: {

  system.stateVersion = "23.05";

  imports = [
    ./hardware-configuration.nix
    ./Sub-Modules/nixpkgs.nix
    ./Sub-Modules/users.nix
    ./Sub-Modules/utf.nix
    ./Sub-Modules/pkgs.nix
    ./Sub-Modules/xserver.nix
    ./Sub-Modules/network.nix
    ./Tools/Scripts/rebuild.nix
    ./Tools/Scripts/test.nix
    ./Tools/Scripts/upgrade.nix
    ./Tools/Scripts/mv-to-tmp.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      systemd-boot.enable = true;
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
    };
  };

  systemd.sleep.extraConfig = ''
    HandleSuspend=ignore
  '';
}
