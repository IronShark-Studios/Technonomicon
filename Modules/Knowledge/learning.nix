{ inputs, ... }: {
  flake.nixosModules.Tn-learning = { pkgs, pkgs-stable, config, ... }: {

    environment.systemPackages = with pkgs; [
      ledger
      fava
      beancount
      gnucash
      visidata
      anki-bin
      zotero
      zathura
      libation
      pdfannots2json
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
