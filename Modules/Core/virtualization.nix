{ inputs, ... }: {
  flake.nixosModules.Tn-virtualization = { pkgs, ... }: {

    virtualisation = {
      libvirtd = {
        enable = true;
        qemu = {
          package = pkgs.qemu_kvm;
          swtpm.enable = true;
        };
      };
      docker.enable = true;
      spiceUSBRedirection.enable = true;
    };

    users.users.xin.extraGroups = [
      "libvirtd"
      "tty"
    ];

    environment.systemPackages = with pkgs; [
      spice
      spice-gtk
      spice-protocol
      virt-viewer
      distrobox
    ];

    programs = {
      virt-manager.enable = true;
      dconf.enable = true;
    };
  };
}
