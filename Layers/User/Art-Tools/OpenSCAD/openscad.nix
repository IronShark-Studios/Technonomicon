{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      openscad
      openscad-lsp
    ];

    file."OpenSCAD.conf" = {
      target = ".config/OpenSCAD/OpenSCAD.conf";
      text = ''
           [General]
           recentFileList=@Invalid()

           [3dview]
           colorscheme=DeepOcean

           [design]
           autoReload=true

           [view]
           hide3DViewToolbar=true
           hideConsole=true
           hideCustomizer=true
           hideEditor=true
           hideEditorToolbar=true
           hideErrorLog=true
           orthogonalProjection=true
           showAxes=true
           showScaleProportional=true
        '';
      };
    };
}
