{...}:
{
  programs.waybar = {
    enable = true;
    style = ./elena.css;
      settings = [
        {
          layer = "top";
          position = "top";
          fixed-center= true;
          modules-left = [ 
            "clock"
            "cpu"
            "memory"
            "disk"
          ];

          modules-center = [
            "hyprland/workspaces"
          ];

          modules-right = [
            "network"
            "pulseaudio"
            "temperature"
            "battery"
          ];

	        "hyprland/workspaces" = {
            format = "{icon}";
            disable-scroll = true;
            # show-special = true;
            # special-visible-only = true;
            all-outputs = true;
            format-icons = {
              "1" = "I";
              "2" = "II";
              "3" = "III";
              "4" = "IV";
              "5" = "V";
              "6" = "VI";
              "9" = " ";
            };
            persistent-workspaces = {
              "1" = "1";
              "2" = "2";
              "3" = "3";
              "4" = "4";
              "5" = "5";
              "6" = "6";
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
            format-wifi = "󰖩 {signalStrength}%";
            format-ethernet = "{ipaddr}/{cidr} 󰈀 ";
            # format-ethernet = " 󰈀 ";
            tooltip-format = "{ifname} via {gwaddr}";
            format-disconnected = "󰖪 Disconnected ";
            format-alt = "{ifname}: {ipaddr}/{cidr}";
          };

          "temperature" = {
            critical-threshold = 80;
            format = "{icon} {temperatureC}°C";
            format-icons = ["" "" ""];
          };

          "battery" = {
            interval = 5;
            states = {
	            "good" = 75;
              "warning" = 40;
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
