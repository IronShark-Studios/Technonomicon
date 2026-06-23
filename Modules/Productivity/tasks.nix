{ inputs, ... }: {
  flake.nixosModules.Tn-tasks = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      taskwarrior3
      timewarrior
      taskwarrior-tui
    ];
  };
}
