{ inputs, ... }: {
  flake.nixosModules.Tn-shell = { pkgs, ... }: {

    programs.xonsh.enable = true;

    environment.systemPackages = with pkgs; [
      ghostty
    ];
  };
}
