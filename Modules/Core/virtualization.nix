{ inputs, ... }: {
  flake.nixosModules.Tn-virtualization = { pkgs, ... }: {

    virtualisation = {
      libvirtd = {
        enable = true;
        qemu = {
          package = pkgs.qemu_kvm;
          swtpm.enable = true;
          # ovmf.enable = true;
          # ovmf.packages = [ pkgs.OVMFFull.fd ];
        };
      };
      docker.enable = true;
      spiceUSBRedirection.enable = true;
    };

    users.users.xin = {
      isNormalUser = true;
      extraGroups = [
        "libvirtd"
        "dialout"
        "tty"
      ];
    };

    environment.systemPackages = with pkgs; [
      spice
      spice-gtk
      spice-protocol
      virt-viewer
      docker
      distrobox
    ];

    programs = {
      virt-manager.enable = true;
      dconf.enable = true;
    };
  };
}
