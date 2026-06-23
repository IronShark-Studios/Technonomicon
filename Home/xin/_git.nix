{ ... }: {
  programs.git = {
    enable = true;
    userName  = "xin";
    userEmail = "git@ironshark.org";

    ignores = [
      "*~"
      ".*~"
      "#*#"
      "\\#*\\#"
      ".*.swp"
    ];

    aliases = {
      send    = "! git status && echo -n 'Commit Message: ' && read -r CommitMessage && git add . && git commit -m \"$CommitMessage\" && git push";
      unstage = "restore --staged";
      history = "log --graph --pretty=oneline";
      last    = "log -1 HEAD";
    };

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase         = false;
      push.default        = "current";
    };
  };
}
