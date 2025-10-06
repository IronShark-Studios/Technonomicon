{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh.shellAliases = {
    cd = "z";
    ca = "clear && printf '\n%.0s' {1..100}";
    lf = "ranger";
    find = "fd -g -i";
    grep = "grep -r";
    cp = "cp -r";
    dd = "caligula burn";
    lx = "eza --icons --oneline --group-directories-first --color auto --all";
    lld = "eza --icons --oneline --group-directories-first --color auto --tree";
    lxd = "eza --icons --oneline --group-directories-first --color auto --tree --all --ignore-glob=\"??????????????????????????????????????\"";
    ll = "eza --icons --oneline --group-directories-first --color auto";
    ls = "eza --icons --oneline --group-directories-first --color auto --long";
    rm = "sudo trash-put -v";
    rm-s = "sudo shred -f";
    trash-restore = "sudo trash-restore";
    arc-sync = "bash /etc/scripts/update-archives.sh";
    power-off = "sudo trash-put ~/Downloads/* & trash-empty & sudo shutdown -h now";
    logout = "sudo kill -9 -1";
    restart = "sudo reboot";
    rebuild = "bash /etc/scripts/rebuild.sh";
    upgrade = "bash /etc/scripts/upgrade.sh";
    test = "bash /etc/scripts/test.sh";
    clean = "rm ~/Grimoire/.trash/* && trash-empty -f && sudo nix-collect-garbage --delete-old";
    devEnv = "nix develop -c zsh";
    Ns = "export current_dir=$(pwd) && hyprctl dispatch exec \"alacritty --working-directory $current_dir\"";
    Nf = "export current_dir=$(pwd) && hyprctl dispatch exec \"alacritty --working-directory $current_dir -e ranger\"";
  };
}
