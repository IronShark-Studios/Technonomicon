{ inputs, outputs, lib, config, pkgs, ... }: {

  gtk = {
    enable = true;
    theme = {
      name = "Materia-dark";
      package = pkgs.materia-theme;
    };
  };
}
