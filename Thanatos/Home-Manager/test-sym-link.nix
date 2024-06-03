{ inputs, outputs, lib, config, pkgs, ... }: {

  home.file."test-sym-link.org".source = mkOutOfStoreSymlink "/home/xin/Projects/Technonomicon/Thanatos/Home-Manager/test-sym-link.org";
}
