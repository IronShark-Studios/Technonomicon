{ inputs, outputs, lib, config, pkgs, ... }: {

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    docker.enable = true;
    spiceUSBRedirection.enable = true;
  };

  users.users.xin.extraGroups = [ 
    "libvirtd"
    "dialout"
  ];

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

  home-manager.users.xin = {
    dconf.settings = {
      "org/virt-manager/virt-manager/connections" = {
        autoconnect = [ "qemu:///system" ];
        uris = [ "qemu:///system" ];
      };
    };
  };
}
