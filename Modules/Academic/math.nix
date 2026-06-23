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
      ]))

      zeromq
    ];
  };
}
