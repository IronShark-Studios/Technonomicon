{ inputs, outputs, lib, config, pkgs, ... }: {

  home.file."alacritty.toml" = {
    target = ".config/alacritty/alacritty.toml";
    text = ''
[font]
size = 18.0

[cursor]
style = "Beam"

[colors.cursor]
background = "#5ec4ff"
text = "#f8f8f2"

[colors.primary]
background = "#20282f"
foreground = "#C5C8C6"

[[keyboard.bindings]]
action = "ToggleViMode"
mods = "Shift"
key = "Escape"

[[keyboard.bindings]]
action = "ToggleViMode"
key = "A"
mode = "Vi"

[[keyboard.bindings]]
action = "ScrollHalfPageDown"
key = "N"
mode = "Vi"

[[keyboard.bindings]]
action = "ScrollHalfPageUp"
key = "E"
mode = "Vi"

[[keyboard.bindings]]
key = "Back"
mods = "Control"
chars = "\u0017"

    '';
  };
}
