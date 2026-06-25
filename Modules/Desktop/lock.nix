{ inputs, ... }: {
  flake.nixosModules.Tn-lock = { pkgs, ... }: {
    programs.hyprlock.enable = true;
  };
}
