import os
import subprocess

# =============================================================================
# 1. STANDARD SHELL OPTIONS & THEME
# =============================================================================
$AUTO_CD = True
$COLOR_INPUT = True
$HISTCONTROL = {'ignoredups'}

$UPDATE_COMPLETIONS_ON_KEYPRESS = False
$COMPLETIONS_BRACKETS = False     # Stops looking up matching brackets on completion
$COMPLETION_QUERY_LIMIT = 50       # Prevents lag on massive directories (default is 100)

# Execution Time Tracking (Replaces OMZ 'timer')
$TIMER_FORMAT = '[Execution Time: {time:.2f}s]'
$TIMER_THRESHOLD = 3

# Colored Man Pages Configuration (Replaces OMZ 'colored-man-pages')
$LESS_TERMCAP_mb = "\x1b[1;31m"      # Begin blinking
$LESS_TERMCAP_md = "\x1b[1;36m"      # Begin bold
$LESS_TERMCAP_me = "\x1b[0m"         # End mode
$LESS_TERMCAP_se = "\x1b[0m"         # End standout-mode
$LESS_TERMCAP_so = "\x1b[01;33m"     # Begin standout-mode (info boxes)
$LESS_TERMCAP_ue = "\x1b[0m"         # End underline
$LESS_TERMCAP_us = "\x1b[1;4;32m"    # Begin underline

# =============================================================================
# 2. DYNAMIC SESSION VARIABLES
# =============================================================================
$SUDO_EDITOR = "emacsclient -t -a ''"
$EDITOR = "emacsclient -t -a ''"

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

# Standard Safety/Utility Aliases (Replaces parts of OMZ 'git' & 'cp')
aliases['gst'] = 'git status -sb'
aliases['gco'] = 'git checkout'
aliases['gl'] = 'git log --oneline -n 10'
aliases['cpv'] = 'rsync -h --progress'  # Modern rsync copy with progress bar

# =============================================================================
# 5. CORE EVENTS & HOOKS (Includes Auto-Eza)
# =============================================================================
@events.on_chdir
def auto_ls(olddir, newdir, **kw):
    # Vterm Directory Tracking
    if 'vterm' in os.environ.get('INSIDE_EMACS', ''):
        print(f"\x1b]51;A{newdir}\x1b\\", end='', flush=True)

    # Automatic directory content list on every 'cd'
    os.system("eza --icons --oneline --group-directories-first --color=always")

# =============================================================================
# 6. CUSTOM SHELL UTILITIES & WRAPPERS
# =============================================================================

# --- Emacs vterm file opener ---
def _eo_wrapper(args):
    if not args:
        print("Usage: eo <filename>")
        return 1
    file_path = os.path.abspath(args[0])
    print(f"\x1b]51;Efind-file {file_path}\x1b\\", end='')
aliases['eo'] = _eo_wrapper

# --- Clipboard Utilities (Replaces OMZ 'copypath' & 'copyfile') ---
def _copypath(args):
    cwd = os.getcwd()
    subprocess.run(['wl-copy'], input=cwd.encode())
    print(f"📋 Copied current path: {cwd}")
aliases['copypath'] = _copypath

def _copyfile(args):
    if not args:
        print("Usage: copyfile <filename>")
        return 1
    try:
        with open(args[0], 'rb') as f:
            subprocess.run(['wl-copy'], input=f.read())
        print(f"📋 Copied contents of {args[0]}")
    except FileNotFoundError:
        print(f"❌ Error: File '{args[0]}' not found.")
aliases['copyfile'] = _copyfile

# --- Interactive FZF Menus (Replaces your original text utilities) ---
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

# --- Command Progress Monitor (Translates your monitor_command tool) ---
def _monitor_command(args):
    if not args:
        print("Usage: monitor_command <command> [args...]")
        return 1

    # Launch your target process in the background
    p = subprocess.Popen(args)
    try:
        # Run the progress command against the dynamic background PID
        subprocess.run(['progress', '-mp', str(p.pid)])
        p.wait()
    except KeyboardInterrupt:
        # Gracefully handle Ctrl+C interrupts without leaving orphan tasks
        p.terminate()
aliases['monitor_command'] = _monitor_command

# --- Splits PDFs into smaller files ---
def _pdf_split(args):
    if not args:
        print("Usage: pdf-split <filename.pdf>")
        return 1
    # Run natively using Xonsh's clean string formatting
    filename = args[0]
    os.system(f'nix-shell -p ocamlPackages.cpdf --run "cpdf -split-bookmarks 0 \'{filename}\' -utf8 -o \'@B.pdf\'"')
aliases['pdf-split'] = _pdf_split

# --- Clears Terminal Display ---
def _clear_all(args):
    # Runs the standard shell clear, then uses pure Python for the 100 newlines
    os.system('clear')
    print('\n' * 100, end='')
aliases['ca'] = _clear_all

# =============================================================================
# 6. VI MODE CURSOR SHAPE CONFIGURATION (For Emacs vterm)
# =============================================================================
$VI_MODE = True  # Ensures Vi keybindings are fully activated

@events.on_ptk_create
def configure_vi_cursor(prompter, **kwargs):
    import sys
    from prompt_toolkit.key_binding.vi_state import InputMode, ViState

    # GUARD: If we have already patched the class, stop here to prevent infinite loop crashes!
    if hasattr(ViState, '_vi_cursor_patched'):
        return

    # Intercept prompt_toolkit's default state setter descriptor
    old_setter = ViState.input_mode.fset

    def custom_input_mode_setter(self, new_mode):
        # Send the DECSCUSR escape sequences directly to standard output
        # 2 q = Solid Block (Normal Mode)
        # 6 q = Solid Vertical Line/Bar (Insert Mode)
        if new_mode == InputMode.NAVIGATION:
            sys.stdout.write("\x1b[2 q")
        elif new_mode == InputMode.INSERT:
            sys.stdout.write("\x1b[6 q")
        sys.stdout.flush()

        # Trigger the original setup routine so the shell works normally
        old_setter(self, new_mode)

    # Inject our custom terminal hook and set our guard flag to True
    ViState.input_mode = property(ViState.input_mode.fget, custom_input_mode_setter)
    ViState._vi_cursor_patched = True

# =============================================================================
# 7. CUSTOM SHELL ALIASES
# =============================================================================
aliases.update({
    'cat': 'bat',
    'cd': 'z',

    # Modern Search & Grep Tooling
    'find': 'fd -g -i',
    'grep': 'rg -i',
    'dd': 'caligula burn',

    # Advanced Eza Listing Configurations
    'lx': 'eza --icons --oneline --group-directories-first --color auto --all',
    'lld': 'eza --icons --oneline --group-directories-first --color auto --tree',
    'lxd': 'eza --icons --oneline --group-directories-first --color auto --tree --all --ignore-glob="??????????????????????????????????????"',
    'll': 'eza --icons --oneline --group-directories-first --color auto',
    'ls': 'eza --icons --oneline --group-directories-first --color auto --long',
    'lsx': 'eza --icons --oneline --group-directories-first --color auto --long --all',
    'ld': 'eza --icons --oneline --only-dirs --color auto',

    # Trash & Safe Removal
    'rm': 'trash-put -v',
    'rm-s': 'shred -f',
    'rm-r': 'trash-restore',

    # System Lifecycle Controls
    'power-off': 'bash /etc/scripts/clean-power-off.sh',
    'logout': 'sudo kill -9 -1',
    'restart': 'sudo reboot',

    # Downloads & Compression
    'bzip': 'bzip3',
    'book-dl': 'aria2c -x 16 -s 16',
})
