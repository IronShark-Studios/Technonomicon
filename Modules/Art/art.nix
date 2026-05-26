{ inputs, ... }: {
  flake.nixosModules.Tn-art = { pkgs, pkgs-stable, config, ... }:
    let
      pureref = pkgs.callPackage (import ./PureRef/_pureref.nix) {};
      allusion = pkgs.callPackage (import ./Allusion/_allusion.nix) {};
    in {

      environment.systemPackages = with pkgs; [
        openscad
        openscad-lsp
        graphviz
        cura-appimage
        obs-studio
        xdg-desktop-portal
        slurp
        grim
        vlc
        inkscape-with-extensions
        gimp-with-plugins
        krita
        blender
        pureref
        allusion
        yt-dlp
        ffmpeg
        wl-color-picker
        pinta

        (makeDesktopItem {
          name = "allusion";
          desktopName = "Allusion";
          exec = "allusion"; # FIXED: System-wide path resolution
          icon = "${./Allusion/_allusion-icon.png}";
          terminal = false;
          type = "Application";
        })

        (makeDesktopItem {
          name = "pureref";
          desktopName = "PureRef";
          exec = "pureref"; # FIXED: System-wide path resolution
          icon = "${./PureRef/_pureref-icon.png}";
          terminal = false;
          type = "Application";
        })
      ];

      environment.etc."xdg/OpenSCAD/OpenSCAD.conf".text = ''
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
}
