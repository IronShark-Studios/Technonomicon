{ inputs, outputs, lib, config, pkgs, ... }: {

  imports = [
    ./GNU-Cash/gnucash.nix
    ./Ledger/ledger.nix
    ./Visidata/visidata.nix
  ];
}
