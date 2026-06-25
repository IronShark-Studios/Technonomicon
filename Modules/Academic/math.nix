{ inputs, ... }: {
  flake.nixosModules.Tn-math = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      julia
      R
      rPackages.languageserver
      rPackages.tidyverse
      rPackages.rmarkdown
      rPackages.knitr
      maxima
      octave
      gnuplot
      lean4
      gap
      # sagemath  # not in nixpkgs at this nixos-unstable rev; use distrobox as stopgap

      # Topology
      polymake      # polyhedral / combinatorial geometry
      macaulay2     # algebraic topology, homological algebra, sheaves

      (python3.withPackages (ps: with ps; [
        numpy
        scipy
        matplotlib
        sympy
        pandas
        jupyter
        jupyterlab
        scikit-learn
        ipython
        gudhi         # TDA: persistent homology, simplicial complexes
      ]))

      zeromq
    ];
  };
}
