{ inputs, outputs, lib, config, pkgs, ... }: {

  home.file."user-dirs.dirs" = {
    target = ".config/user-dirs.dirs";
    force = true;
    text = ''
      XDG_DESKTOP_DIR="$HOME/Archive"
      XDG_DOWNLOAD_DIR="$HOME/Downloads"
      XDG_TEMPLATES_DIR="$HOME/Projects"
      XDG_PUBLICSHARE_DIR="$HOME/Projects"
      XDG_DOCUMENTS_DIR="$HOME/Media"
      XDG_MUSIC_DIR="$HOME/Media"
      XDG_PICTURES_DIR="$HOME/Media"
      XDG_VIDEOS_DIR="$HOME/Media"
    '';
  };
}
