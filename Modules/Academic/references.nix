{ inputs, ... }: {
  flake.nixosModules.Tn-references = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      zotero
      foliate
      zathura
      libation
    ];
  };
}
