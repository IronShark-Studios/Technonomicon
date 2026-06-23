{ inputs, ... }: {
  flake.nixosModules.Tn-math = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      julia
      maxima
      octave
      gnuplot
      lean4

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
