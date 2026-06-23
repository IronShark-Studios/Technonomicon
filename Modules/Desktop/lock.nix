{ inputs, ... }: {
  flake.nixosModules.Tn-lock = { pkgs, ... }: {

    programs.hyprlock.settings = {
      general.hide_cursor = true;

      background = [{
        monitor = "";
        blur_passes = 3;
        blur_size = 8;
        noise = 0.012;
        contrast = 0.89;
        brightness = 0.72;
      }];

      input-field = [{
        size = "320, 52";
        outline_thickness = 2;
        outer_color = "rgb(00FFFF)";
        inner_color = "rgb(1D232F)";
        font_color = "rgb(CFDFDF)";
        fade_on_empty = true;
        placeholder_text = "";
        dots_center = true;
        check_color = "rgb(00FA9A)";
        fail_color = "rgb(FF5370)";
        position = "0, -120";
        halign = "center";
        valign = "center";
      }];

      label = [
        {
          text = "$TIME";
          font_size = 72;
          font_family = "JetBrains Mono";
          color = "rgba(CFDFDFee)";
          position = "0, 100";
          halign = "center";
          valign = "center";
        }
        {
          text = "cmd[update:60000] date '+%A, %B %d %Y'";
          font_size = 18;
          color = "rgba(8C98A6cc)";
          position = "0, 20";
          halign = "center";
          valign = "center";
        }
      ];
    };

    services.hypridle.settings = {
      general = {
        lock_cmd = "hyprlock";
        before_sleep_cmd = "hyprlock";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };
      listener = [
        { timeout = 240; on-timeout = "brightnessctl -s set 20%"; on-resume = "brightnessctl -r"; }
        { timeout = 300; on-timeout = "hyprlock"; }
        { timeout = 600; on-timeout = "systemctl suspend"; }
      ];
    };
  };
}
