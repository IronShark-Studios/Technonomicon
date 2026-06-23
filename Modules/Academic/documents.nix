{ inputs, ... }: {
  flake.nixosModules.Tn-documents = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      texlive.combined.scheme-full
      typst
      tinymist
      pandoc
      quarto
      mermaid-cli
      drawio
      pdf2svg
      poppler
      pdfannots2json
      hunspell
      hunspellDicts.en_US
    ];
  };
}
