{ inputs, ... }: {
  flake.nixosModules.Tn-learning = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      ledger
      fava
      beancount
      gnucash
      (symlinkJoin {
        name = "rnote-wrapped";
        paths = [ rnote ];
        buildInputs = [ makeWrapper ];
        postBuild = ''
          wrapProgram $out/bin/rnote \
            --set GDK_BACKEND x11
        '';
      })
    ];

  };
}
