{ inputs, outputs, lib, config, pkgs, ... }: {

  system.stateVersion = "24.05";

  imports = [
    ./hardware-configuration.nix
    ./Sub-Modules/nixpkgs.nix
    ./Sub-Modules/users.nix
    ./Sub-Modules/utf.nix
    ./Sub-Modules/pkgs.nix
    ./Sub-Modules/xserver.nix
    ./Sub-Modules/network.nix
    ../../Shared/Scripts/rebuild.nix
    ../../Shared/Scripts/test.nix
    ../../Shared/Scripts/upgrade.nix
    ../../Shared/Scripts/update-archives.nix
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
