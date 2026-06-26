{ inputs, ... }: {
  flake.nixosModules.Tn-hyprland = { pkgs, ... }: {

    programs.hyprland.enable = true;

    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
    xdg.portal.configPackages = [ pkgs.xdg-desktop-portal-hyprland ];

    home-manager.users.xin.home.file.".config/hypr/hyprland.lua".text = ''
      hl.monitor({
        output   = "",
        mode     = "preferred",
        position = "auto",
        scale    = "auto",
      })

      local terminal = "ghostty"
      local mainMod  = "SUPER"

      hl.env("XCURSOR_SIZE", "24")
      hl.env("HYPRCURSOR_SIZE", "24")

      hl.config({
        input = {
          kb_layout = "us",
          follow_mouse = 1,
          touchpad = {
            natural_scroll = true,
          },
        },
        general = {
          layout = "dwindle",
        },
        dwindle = {
          preserve_split = true,
        },
      })

      hl.bind(mainMod .. " + Return",    hl.dsp.exec_cmd(terminal))
      hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
      hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exit())
      hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen())

      hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
      hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
      hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
      hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

      hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
      hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
      hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
      hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

      for i = 1, 9 do
        hl.bind(mainMod .. " + " .. i,         hl.dsp.focus({ workspace = i }))
        hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
      end

      hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
      hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
    '';
  };
}
