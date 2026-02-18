{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.zsh.shellAliases = {
    cd = "z";
    view = "nvim -R";
    vimdiff = "nvim -d";
    ca = "clear && printf '\n%.0s' {1..100}";
    lf = "ranger";
    find = "fd -g -i";
    grep = "rg -i";
    dd = "caligula burn";
    lx = "eza --icons --oneline --group-directories-first --color auto --all";
    lld = "eza --icons --oneline --group-directories-first --color auto --tree";
    lxd = "eza --icons --oneline --group-directories-first --color auto --tree --all --ignore-glob=\"??????????????????????????????????????\"";
    ll = "eza --icons --oneline --group-directories-first --color auto";
    ls = "eza --icons --oneline --group-directories-first --color auto --long";
    lsx = "eza --icons --oneline --group-directories-first --color auto --long --all";
    ld = "eza --icons --oneline --only-dirs --color auto";
    rm = "sudo trash-put -v";
    rm-s = "sudo shred -f";
    trash-restore = "sudo trash-restore";
    arc-sync = "bash /etc/scripts/update-archives.sh";
    power-off = "bash /etc/scripts/clean-power-off.sh";
    logout = "sudo kill -9 -1";
    restart = "sudo reboot";
    devEnv = "nix develop -c zsh";
    ns = "export current_dir=$(pwd) && hyprctl dispatch exec \"alacritty --working-directory $current_dir\"";
    nf = "export current_dir=$(pwd) && hyprctl dispatch exec \"alacritty --working-directory $current_dir -e ranger\"";
    qt = "qutebrowser";
    ff = "firefox";
    ghub = "gh";
    bzip = "bzip3";
    k-stop = "sudo systemctl stop kanata-colmacs";
    k-start = "sudo systemctl restart kanata-colmacs";
  };
}
