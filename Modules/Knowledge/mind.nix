{ inputs, ... }: {
  flake.nixosModules.Tn-mind = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      obsidian
      taskwarrior3
      timewarrior
    ];
  };
}
