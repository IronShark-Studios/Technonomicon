{ inputs, ... }: {
  flake.nixosModules.browsers-feature = { pkgs, pkgs-stable, config, ... }: {

    xdg.desktopEntries = {

      khan-academy = {
        name = "Khan Academy";
        exec = "${pkgs.brave}/bin/brave --app=https://www.khanacademy.org/ --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
        icon = ./khan-academy-log.png;
      };

      the-odin-project = {
        name = "TOP: The Odin Project";
        exec = "${pkgs.brave}/bin/brave --app=https://www.theodinproject.com/dashboard --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
        icon = ./top-icon.png;
      };

      youtube = {
        name = "YouTube";
        exec = "${pkgs.brave}/bin/brave --app=https://www.youtube.com --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
        icon = ./youtube.png;
      };

      gemini = {
        name = "Gemini";
        exec = "${pkgs.brave}/bin/brave --app=https://gemini.google.com/app --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
        icon = ./gemini.png;
      };

      steno-jig = {
        name = "Steno Jig";
        exec = "${pkgs.brave}/bin/brave --app=https://joshuagrams.github.io/steno-jig/form.html --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
      };

      typey-type = {
        name = "Typey Type";
        exec = "${pkgs.brave}/bin/brave --app=https://didoesdigital.com/typey-type/lessons/ --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
      };

      G-Mail = {
        name = "Google Email";
        exec = "${pkgs.brave}/bin/brave --app=https://gmail.com --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
      };

      G-Calendar = {
        name = "Google Calendar";
        exec = "${pkgs.brave}/bin/brave --app=https://calendar.google.com --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
      };

      Toggl = {
        name = "Toggl Time Tracking";
        exec = "${pkgs.brave}/bin/brave --app=https://track.toggl.com/timer --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
      };

      syncthing = {
        name = "Syncthing";
        exec = "${pkgs.brave}/bin/brave --app=http://localhost:8385/ --start-maximized";
        terminal = false;
        categories = [ "Application" "Network" ];
      };
    };
  };
}
