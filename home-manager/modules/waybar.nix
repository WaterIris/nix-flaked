{pkgs, ...}:
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
      settings = [
        {
          layer = "top";
          position = "top";
          modules-left = [ "hyprland/workspaces" ];
          modules-center = [
          "hyprland/window"
          ];
          modules-right = [
          "cpu"
          "memory"
          "disk"
          "battery"
          "clock"
          ];

	  "hyprland/workspaces" = {
            format = "{name}";
            format-icons = {
  	      default = "";
              active = "";
              urgent = "";
            };
            on-scroll-up = "hyprctl dispatch workspace e+1";
            on-scroll-down = "hyprctl dispatch workspace e-1";
          };  

          "clock" = {
            format = ''  {:L%H:%M}'';
            tooltip = true;
            tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
          };
          "hyprland/window" = {
            max-length = 22;
            separate-outputs = true;
            rewrite = {"" = " 🙈 No Windows? ";};
          };
          "memory" = {
            interval = 5;
            format = "  {}%";
            tooltip = true;
          };
          "cpu" = {
            interval = 5;
            format = "  {usage:2}%";
            tooltip = true;
          };
          "disk" = {
            format = "󰋊 {free}";
            tooltip = true;
          };
          "battery" = {
            interval = 30;
            states = {
	      "good" = 95;
              "warning" = 30;
              "critical" = 20;
            };
            format =  "{icon} {capacity}%";
            format-charging =  "󰂄 {capacity}%";
            format-plugged =  "󰂄  {capacity}%";
            format-alt = "{icon} {time}";
            format-icons = [
              "󰁻"
              "󰁼"
              "󰁾"
              "󰂀"
              "󰂂"
              "󰁹"
            ];
          };
        }
      ]; 
    };
}
