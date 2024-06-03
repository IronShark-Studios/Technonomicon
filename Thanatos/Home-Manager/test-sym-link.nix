{ inputs, outputs, lib, config, pkgs, ... }: {

  home.file."test-sym-link.org".source = config.lib.file.mkOutOfStoreSymlink ./test-sym-link.org;
}
