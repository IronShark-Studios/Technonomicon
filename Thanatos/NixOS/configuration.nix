{ inputs, outputs, lib, config, pkgs, ... }: {

  system.stateVersion = "23.11";

  imports = [
    ./hardware-configuration.nix
    ./Sub-Modules/nixpkgs.nix
    ./Sub-Modules/users.nix
    ./Sub-Modules/utf.nix
    ./Sub-Modules/pkgs.nix
    ./Sub-Modules/xserver.nix
    ./Sub-Modules/network.nix
    ./Sub-Modules/virtualization.nix
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

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  hardware.opentabletdriver.enable = true;

  systemd.sleep.extraConfig = ''
    HandleSuspend=ignore
  '';
}
