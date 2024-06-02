{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh.shellAliases = {
    cd = "z";
    ca = "clear";
    lf = "lfrun";
    cpa = "cp -f -r";
    lx = "ls -l -c -a";
    ll = "ls -l -c";
    rma = "sudo trash-put";
    arc-sync = "bash /etc/scripts/update-archives.sh";
    power-off = "sudo trash-put ~/Downloads/* & trash-empty & sudo shutdown -h now";
    logout = "sudo kill -9 -1";
    restart = "sudo reboot";
    eo = "emacsclient -n -c";
    eoc = "emacsclient -n";
    rebuild = "bash /etc/scripts/rebuild.sh";
    upgrade = "bash /etc/scripts/upgrade.sh";
    test = "bash /etc/scripts/test.sh";
    clean = "sudo nix-collect-garbage --delete-old && rebuild";
    devEnv = "nix develop -c zsh";
    tn = "cd ~/Projects/Technonomicon";
    ps = "cd ~/Projects/Personal-Blog/content/posts";
    pj = "cd ~/Projects";
    dl = "cd ~/Downloads";
  };
}
