{...}:
{
  programs.waybar = {
    enable = true;
    style = ./style.css;
      settings = [
        {
          layer = "top";
          position = "top";
          fixed-center= true;
          modules-left = [ 
            "hyprland/workspaces"
          ];

          modules-center = [
            "clock"
          ];

          modules-right = [
            "network"
            "cpu"
            "memory"
            "disk"
            "pulseaudio"
            "battery"
          ];

	        "hyprland/workspaces" = {
            format = "{icon}";
            disable-scroll = true;
            # show-special = true;
            # special-visible-only = true;
            all-outputs = true;
            format-icons = {
              "1" = "";
              "2" = "";
              "3" = "";
              "4" = "󰄛";
              "5" = "";
              "6" = "󰑴";
              "7" = "󰊗";
              "8" = "";
              "9" = "";
            };
            persistent-workspaces = {
              "1" = "1";
              "2" = "2";
              "3" = "3";
              "4" = "4";
              "5" = "5";
              "6" = "6";
              "7" = "7";
              "8" = "8";
              "eDP-1" = ["9"];
            };
          };  

          "clock" = {
            format = ''  {:L%H:%M}'';
            tooltip = true;
            tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
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

          "pulseaudio" = {
		        tooltip = true;
		        scroll-step = 5;
		        format = "{icon}  {volume}%";
		        format-icons = {
			        "default" = [""  ""  ""];
              "headphone" = "";
	  	      };
	        };

          "network" = {
		        tooltip = true;
            tooltip-format = "{essid}";
		        format-wifi = " ";
		        format-ethernet = "󰈀 ";
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
            format-plugged =  " {capacity}%";
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
