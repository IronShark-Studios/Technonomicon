{ inputs, outputs, lib, config, pkgs, ... }: {

 services.xserver.videoDrivers = [ "nvidia" ];

 hardware.nvidia = {
   open = true;
   package = config.boot.kernelPackages.nvidiaPackages.stable;
   modesetting.enable = true;
   prime = {
     sync.enable = true;
     nvidiaBusId = "PCI:01:00:0";  # Found with lspci | grep VGA
     intelBusId = "PCI:00:02:0";  # Found with lspci | grep VGA
   };
 };

  hardware.opentabletdriver.enable = true;

}
