import os
import subprocess

# Integrate "nix-shell" and "direnv" commands
execx($(nix-your-shell xonsh))

# =============================================================================
# 1. STANDARD SHELL OPTIONS & THEME
# =============================================================================
$AUTO_CD = True
$COLOR_INPUT = True
$HISTCONTROL = {'ignoredups'}

$COMPLETIONS_CONFIRM = False
$UPDATE_COMPLETIONS_ON_KEYPRESS = False
$COMPLETIONS_BRACKETS = False
$COMPLETION_QUERY_LIMIT = 50

# Execution Time Tracking
$TIMER_FORMAT = '[Execution Time: {time:.2f}s]'
$TIMER_THRESHOLD = 3

# Colored Man Pages
$LESS_TERMCAP_mb = "\x1b[1;31m"
$LESS_TERMCAP_md = "\x1b[1;36m"
$LESS_TERMCAP_me = "\x1b[0m"
$LESS_TERMCAP_se = "\x1b[0m"
$LESS_TERMCAP_so = "\x1b[01;33m"
$LESS_TERMCAP_ue = "\x1b[0m"
$LESS_TERMCAP_us = "\x1b[1;4;32m"

# =============================================================================
# 2. DYNAMIC SESSION VARIABLES
# =============================================================================
$SUDO_EDITOR = "nvim"
$EDITOR = "nvim"
$VISUAL = "nvim"

# =============================================================================
# 3. INIT SCRIPTS & EXTERNAL PLUGINS
# =============================================================================
xontrib load direnv
xontrib load fzf-widgets

# FZF Keybindings
$fzf_history_binding = "c-r"
$fzf_ssh_binding = "c-s"
$fzf_file_binding = "c-t"
$fzf_dir_binding = "c-g"

execx($(zoxide init xonsh))
execx($(starship init xonsh))

# Clear screen on boot
print('\n' * 100, end='')

# =============================================================================
# 4. DIRECTORY ALIASES
# =============================================================================
aliases['tn'] = 'cd ~/Projects/Technonomicon'
aliases['ps'] = 'cd ~/Projects/Personal-Blog/content/posts'
aliases['pj'] = 'cd ~/Projects'
aliases['dl'] = 'cd ~/Downloads'

# Git shortcuts
aliases['gst'] = 'git status -sb'
aliases['gco'] = 'git checkout'
aliases['gl'] = 'git log --oneline -n 10'
aliases['cpv'] = 'rsync -h --progress'

# =============================================================================
# 5. CORE EVENTS & HOOKS
# =============================================================================
@events.on_chdir
def auto_ls(olddir, newdir, **kw):
    # Automatic directory listing on every 'cd'
    os.system("eza --icons --oneline --group-directories-first --color=always")

# =============================================================================
# 6. CUSTOM SHELL UTILITIES & WRAPPERS
# =============================================================================

# --- Clipboard Utilities ---
def _copypath(args):
    cwd = os.getcwd()
    subprocess.run(['wl-copy'], input=cwd.encode())
    print(f"Copied current path: {cwd}")
aliases['copypath'] = _copypath

def _copyfile(args):
    if not args:
        print("Usage: copyfile <filename>")
        return 1
    try:
        with open(args[0], 'rb') as f:
            subprocess.run(['wl-copy'], input=f.read())
        print(f"Copied contents of {args[0]}")
    except FileNotFoundError:
        print(f"Error: File '{args[0]}' not found.")
aliases['copyfile'] = _copyfile

# --- Interactive FZF Menus ---
def _rg_menu(args):
    query = args[0] if args else ""
    rg -i @(query) | fzf
aliases['rg-menu'] = _rg_menu

def _rgx_menu(args):
    query = args[0] if args else ""
    rg --regex @(query) | fzf
aliases['rgx-menu'] = _rgx_menu

def _fd_menu(args):
    query = args[0] if args else ""
    fd -i @(query) | fzf
aliases['fd-menu'] = _fd_menu

def _fdx_menu(args):
    query = args[0] if args else ""
    fd --regex @(query) | fzf
aliases['fdx-menu'] = _fdx_menu

# --- Command Progress Monitor ---
def _monitor_command(args):
    if not args:
        print("Usage: monitor_command <command> [args...]")
        return 1
    p = subprocess.Popen(args)
    try:
        subprocess.run(['progress', '-mp', str(p.pid)])
        p.wait()
    except KeyboardInterrupt:
        p.terminate()
aliases['monitor_command'] = _monitor_command

# --- PDF Split ---
def _pdf_split(args):
    if not args:
        print("Usage: pdf-split <filename.pdf>")
        return 1
    filename = args[0]
    os.system(f'nix-shell -p ocamlPackages.cpdf --run "cpdf -split-bookmarks 0 \'{filename}\' -utf8 -o \'@B.pdf\'"')
aliases['pdf-split'] = _pdf_split

# --- Clear Terminal ---
def _clear_all(args):
    os.system('clear')
    print('\n' * 100, end='')
aliases['ca'] = _clear_all

# =============================================================================
# 7. CUSTOM WORD NAVIGATION & DELETION
# =============================================================================

$XONSH_CTRL_BKSP_DELETION = True

@events.on_ptk_create
def add_custom_keybindings(prompter, **kwargs):
    bindings = kwargs.get('bindings')
    if not bindings:
        return

    @bindings.add('c-left')
    def _(event):
        b = event.current_buffer
        pos = b.document.find_start_of_previous_word(count=event.arg)
        if pos:
            b.cursor_position += pos

    @bindings.add('c-right')
    def _(event):
        b = event.current_buffer
        pos = b.document.find_end_of_next_word(count=event.arg)
        if pos:
            b.cursor_position += pos

# =============================================================================
# 8. ALIASES
# =============================================================================

aliases.update({
    'cat': 'bat',
    'cd': 'z',

    # Editor
    'vim': 'nvim',
    'vi':  'nvim',

    # Taskwarrior
    't':  'task',
    'tw': 'timew',
    'tl': 'task list',

    # Search
    'find': 'fd -g -i',
    'grep': 'rg -i',
    'dd': 'caligula burn',

    # Eza listings
    'lx':  'eza --icons --oneline --group-directories-first --color auto --all',
    'lld': 'eza --icons --oneline --group-directories-first --color auto --tree',
    'lxd': 'eza --icons --oneline --group-directories-first --color auto --tree --all --ignore-glob="??????????????????????????????????????"',
    'll':  'eza --icons --oneline --group-directories-first --color auto',
    'ls':  'eza --icons --oneline --group-directories-first --color auto --long',
    'lsx': 'eza --icons --oneline --group-directories-first --color auto --long --all',
    'ld':  'eza --icons --oneline --only-dirs --color auto',

    # Trash & safe removal
    'rm':   'trash-put -v',
    'rm-s': 'shred -f',
    'rm-r': 'trash-restore',

    # System
    'power-off': 'bash /etc/scripts/clean-power-off.sh',
    'logout':    'sudo kill -9 -1',
    'restart':   'sudo reboot',

    # Downloads & compression
    'bzip':    'bzip3',
    'book-dl': 'aria2c -x 16 -s 16',
})
