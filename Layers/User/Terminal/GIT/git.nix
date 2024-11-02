{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    lfs.enable = true;
    userName = "xin";
    userEmail = "git@ironshark.org";
    ignores = [
      "*~"
      ".*~"
      "#*#"
      "\#*\#"
      ".*.swp"
    ];
    aliases = {
      send = ''
        ! git status &&
        echo -n Commit Message:  &&
        read -r CommitMessage &&
        git add . &&
        git commit -m "$CommitMessage" &&
        git push
      '';
    };
    extraConfig = {
      init = {
        defaultBranch = "main";
        pull = {
          rebase = true;
        };
        push = {
          origin = "HEAD";
        };
      };
    };
  };

  home.packages = with pkgs; [
    git-crypt
  ];
}
