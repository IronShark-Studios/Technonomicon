{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh.syntaxHighlighting = {
    enable = true;
    styles = {
      comment = "fg=#41505E,underline";
      constant = "fg=#D95468,bold";
      entity = "fg=#D98E48,italic";
      function = "fg=#8BD49C";
      alias = "fg=#33CED8";
      suffix-alias = "fg=#33CED8,bold";
      global-alias = "fg=#33CED8,bold";
      builtin = "fg=#EBBF83";
      reserved-word = "fg=#5EC4FF,bold";
      hashed-command = "fg=#539AFC";
      path = "fg=#718CA1";
      globbing = "fg=#E27E8D";
      history-expansion = "fg=#B62D65";
      single-hyphen-option = "fg=#70E1E8,bold";
      double-hyphen-option = "fg=#70E1E8,bold";
      back-quoted-argument = "fg=#008B94";
      single-quoted-argument = "fg=#008B94";
      double-quoted-argument = "fg=#008B94";
      dollar-double-quoted-argument = "fg=#008B94";
      back-double-quoted-argument = "fg=#008B94";
      assign = "fg=#D95468";
      precommand = "fg=#008B94,italic";
      autodirectory = "fg=#008B94,bold";
      commandseparator = "fg=#008B94,bold";
      command-substitution-delimiter = "fg=#008B94,bold";
      command-substitution-delimiter-unquoted = "fg=#008B94";
      unknown-token = "fg=#539AFC";
    };
  };
}
