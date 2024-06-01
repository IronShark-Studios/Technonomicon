{ inputs, outputs, lib, config, pkgs, ... }: {

  home.file."alacritty.toml" = {
    target = ".config/alacritty/alacritty.toml";
    text = ''
[font]
size = 18.0

[colors.cursor]
background = "#5ec4ff"
text = "#f8f8f2"

[colors.primary]
background = "#20282f"
foreground = "#C5C8C6"

[[keyboard.bindings]]
action = "Left"
key = "M"
mode = "Vi"

[[keyboard.bindings]]
action = "Down"
key = "N"
mode = "Vi"

[[keyboard.bindings]]
action = "Up"
key = "E"
mode = "Vi"

[[keyboard.bindings]]
action = "Right"
key = "I"
mode = "Vi"

[[keyboard.bindings]]
key = "Back"
mods = "Control"
chars = "\u0017"

[shell]
program = "/home/xin/.nix-profile/bin/tmux"
    '';
  };
}
