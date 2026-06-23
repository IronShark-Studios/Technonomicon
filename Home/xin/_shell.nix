{ pkgs, ... }: {
  # Override editor env vars set at system level
  home.sessionVariables = {
    EDITOR      = "nvim";
    VISUAL      = "nvim";
    SUDO_EDITOR = "nvim";
  };

  # User-specific xonsh config layered on top of /etc/xonshrc
  home.file.".xonshrc".text = ''
    # Editor
    $EDITOR = "nvim"
    $VISUAL = "nvim"
    $SUDO_EDITOR = "nvim"

    # Neovim aliases
    aliases['vim'] = 'nvim'
    aliases['vi']  = 'nvim'

    # Taskwarrior shortcuts
    aliases['t']  = 'task'
    aliases['tw'] = 'timew'
    aliases['tl'] = 'task list'

    # Clipboard → temp file → nvim
    def nv_clip():
        """Dump clipboard into a temp file and open it in nvim."""
        import tempfile
        content = $(wl-paste)
        with tempfile.NamedTemporaryFile(suffix='.txt', delete=False, mode='w') as f:
            f.write(content)
            fname = f.name
        $[nvim @(fname)]

    # yazi cd-on-exit wrapper
    def y(args):
        """Launch yazi and cd to its last directory on exit."""
        import tempfile, subprocess
        tmp = $(mktemp).strip()
        subprocess.run(["yazi", "--cwd-file", tmp] + args)
        if os.path.exists(tmp):
            cwd = open(tmp).read().strip()
            if cwd and cwd != os.getcwd():
                os.chdir(cwd)
    aliases['y'] = y
  '';
}
