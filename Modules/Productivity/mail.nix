{ inputs, ... }: {
  flake.nixosModules.Tn-mail = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      thunderbird
      aerc
      notmuch
      isync
      msmtp
    ];
  };
}
