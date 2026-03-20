{ inputs, outputs, lib, config, pkgs, ... }: {

  programs.vim = {
    enable = true;
  };


programs.neovim = {
  enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraPackages = with pkgs; [
    ];

    plugins = with pkgs.vimPlugins; [
    ];

    extraConfig =''
      let fcitx5state=system("fcitx5-remote")
      autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote")[0] | silent !fcitx5-remote -c " Disable the input method when exiting insert mode and save the state
      autocmd InsertEnter * :silent if fcitx5state == 2 | call system("fcitx5-remote -o") | endif " 2 means that the input method was opened in the previous state, and the input method is started when entering the insert mode

      lua << EOF
      -- Initialize Hop
      require('hop').setup()

      -- 's' - Jump to any character on screen
      vim.keymap.set('n', 's', '<cmd>HopChar1<CR>', { desc = 'Hop 1 Char (Avy jump)' })

      -- 'S' (Shift+s) - Jump to any visible line
      vim.keymap.set('n', 'S', '<cmd>HopLine<CR>', { desc = 'Hop Line (Avy line jump)' })
      EOF
    '';
  };

  home.file = {
    "Nvim-Desktop" = {
      target = ".local/share/applications/nvim-term.desktop";
      text = ''
        #!/usr/bin/env xdg-open
        [Desktop Entry]
        Type=Application
        Terminal=false
        Version=1.0
        Name=NeoVim
        Icon=.local/share/applications/nvim.png
        Exec=/home/xin/.nix-profile/bin/alacritty -e nvim %F
        MimeType=text/plain;text/markdown;
      '';
    };
    "Nvim-Icon" = {
      source = ./nvim.png;
      target = ".local/share/applications/nvim.png";
    };
  };

}
