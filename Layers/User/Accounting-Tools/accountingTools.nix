{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./gnucash.nix
    ./ledger.nix
    ./visidata.nix
  ];
}
