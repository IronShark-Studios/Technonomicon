{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-doom-emacs-unstraightened.hmModule
  ];

  programs.doom-emacs = {
    enable = true;
    
    # 2. Point this to your actual Doom config directory (where init.el, config.el, packages.el live)
    # This assumes you have a folder called `doom.d` in the same directory as this nix file.
    doomDir = ./Doom;
    
    # 3. Specify the most up-to-date Emacs package. 
    # If you are on Wayland (Hyprland, etc.), emacs30-pgtk or emacs29-pgtk is highly recommended.
    emacs= pkgs.emacs30-pgtk; 

    # Optional: If you need to inject extra packages directly from nixpkgs
    # extraPackages = epkgs: [ epkgs.treesit-grammars.with-all-grammars ];
  };

  # Optional but recommended: Add dependencies that Doom might expect to be available on your system path
  home.packages = with pkgs; [
    ripgrep
    fd
    git
  ];
}
