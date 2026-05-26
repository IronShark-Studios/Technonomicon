{ inputs, ... }: {
  flake.nixosModules.Tn-shell = { pkgs, ... }: {

    programs.xonsh = {
      enable = true;
      config = builtins.readFile ./_config.xsh;
      extraPackages = ps: [
        (ps.buildPythonPackage {
          pname = "xontrib-fzf-widgets";
          version = "master";
          src = pkgs.fetchFromGitHub {
            owner = "laloch";
            repo = "xontrib-fzf-widgets";
            rev = "master";
            hash = "sha256-lz0oiQSLCIQbnoQUi+NJwX82SbUvXJ+3dEsSbOb20q4=";
          };
          pyproject = true;
          build-system = [ ps.setuptools ];
          doCheck = false;
        })

        (ps.buildPythonPackage rec {
          pname = "xonsh-direnv";
          version = "1.6.5";
          src = pkgs.fetchFromGitHub {
            owner = "74th";
            repo = "xonsh-direnv";
            rev = "${version}";
            hash = "sha256-huBJ7WknVCk+WgZaXHlL+Y1sqsn6TYqMP29/fsUPSyU=";
          };
          pyproject = true;
          build-system = [ ps.setuptools ];
          doCheck = false;
        })
      ];
    };

    programs.direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    environment.etc."gitconfig".source = ./_gitconfig;
    environment.etc."gitignore_global".text = ''
      *~
    .*~
    #*#
    \#*\#
    .*.swp
    '';

    programs.starship = {
      enable = true;
      settings = {
        format = "$directory$git_branch$git_commit$git_state$git_status\n$character";
        right_format = "$cmd_duration";

        time.disabled = true;
        cmd_duration.disabled = true;

        character = {
          success_symbol = "[❯](#539bf5)";
          error_symbol = "[✗](#ff4b00)";
        };

        directory = {
          style = "#539bf5";
          truncate_to_repo = true;
          fish_style_pwd_dir_length = 3;
          format = "[$read_only$path]($style) ";
          read_only = " ";
        };

        git_branch = {
          style = "#539bf5";
          format = "[$symbol$branch]($style) ";
        };

        git_commit = {
          style = "#539bf5";
          format = "[\\($hash$tag\\)]($style) ";
        };

        git_state = {
          style = "#539bf5";
          format = "[\\($state( $progress_current/$progress_total)\\)]($style) ";
        };

        git_status = {
          style = "#539bf5";
          format = "[$conflicted$staged$modified$renamed$deleted$untracked$stashed$ahead_behind]($style) ";

          conflicted = "[ ](bold fg:#539bf5)";
          staged = "[ ](fg:#539bf5)";
          modified = "[ ](fg:#539bf5)";
          renamed = "[ ](fg:#539bf5)";
          deleted = "[ ](fg:#539bf5)";
          untracked = "[? ](fg:#539bf5)";
          stashed = "[ ](fg:#539bf5)";
          ahead = "[ ](fg:#539bf5)";
          behind = "[ ](fg:#539bf5)";
        };
      };
    };

    environment.systemPackages = with pkgs; [
      gitFull
      git-lfs
      ghostty
      btop
      nmon
      kmon
      rsync
      rclone
      wget
      glib
      unzip
      nix-ld
      curl
      zoxide
      gparted
      pciutils
      fastfetch
      udiskie
      trash-cli
      ripgrep
      ripgrep-all
      fd
      eza
      entr
      progress
      copyq
      gcc
      zip
      caligula
      gum
      sc-im
      gh
      glab
      jq
      yq
      dysk
      pastel
      gnumake
      gemini-cli
      usbutils
      bat
      mpv
      sox
      aria2
      bzip3
      bitwarden-cli
      bitwarden-desktop
      nvtopPackages.nvidia
    ];
  };
}
