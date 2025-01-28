{pkgs, ...}:
{
  programs.waybar = {
    enable = true;
    # package = pkgs.waybar;
      settings = [
        {
          layer = "top";
          position = "top";
          modules-left = [ 
            "hyprland/workspaces"
            "pulseaudio"
          ];

          modules-center = [
            "network"
          ];

          modules-right = [
            "cpu"
            "memory"
            "disk"
            "battery"
            "clock"
          ];

	        "hyprland/workspaces" = {
            format = "{icon}";
            format-icons = {
               "1" = "1";
               "2" = "2";
               "3" = "3";
               "4" = "4";
               "5" = "5";
               "6" = "6";
              "urgent" = "";
              "active" = "";
              "default" = "";
            };
            on-scroll-up = "hyprctl dispatch workspace e+1";
            on-scroll-down = "hyprctl dispatch workspace e-1";
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
	  	      };
	        };

          "network" = {
		        tooltip = false;
		        format-wifi = "  {essid} {ipaddr}";
		        format-ethernet = "󰈀 {ipaddr}";
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

      style = ''
        * {
	        border: none;
	        border-radius: 0;
	        font-family: JetBrainsMono Nerd Font;
	        font-size: 14px;
	        min-height: 14px;
        }

        window#waybar {
	        background: transparent;
        }

        window#waybar.hidden {
	        opacity: 0.2;
        }

        #window {
          margin-top: 4px;
          padding-left: 16px;
          padding-right: 16px;
	        border-radius: 26px;
	        transition: none;
	        /*
	        color: #f8f8f2;
	        background: #232136;
          */
          color: transparent;
	        background: transparent;
        }

        #workspaces {     
          margin-top: 4px;
	        margin-left: 8px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        background: #232136;
	        transition: none;
        }

        #workspaces button {
	        transition: none;
	        color: #f8f8f2;
	        background: transparent;
	        font-size: 8px;
        }

        #workspaces button:hover {
	        transition: none;
	        box-shadow: inherit;
	        text-shadow: inherit;
	        color: #eb6f92;
        }

        #workspaces button:active {
	        transition: none;
	        box-shadow: inherit;
	        text-shadow: inherit;
	        color: #31748f;
        }

        #network {
          border-width: 2px;
          border-style: solid;
          border-color: #c4a7e7;
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #c4a7e7;
	        background: #232136;
        }

        #pulseaudio {
          border-width: 2px;
          border-style: solid;
          border-color: #56949f;
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #56949f;
	        background: #232136;
        }

        #temperature {
          border-width: 2px;
          border-style: solid;
          border-color: #f6c177;
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #f6c177;
	        background: #232136;
        }

        #cpu {
          border-width: 2px;
          border-style: solid;
          border-color: #f6c177;
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #f6c177;
	        background: #232136;
        }

        #memory {
          border-width: 2px;
          border-style: solid;
          border-color: #eb6f92;
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #eb6f92;
	        background: #232136;
        }

        #disk {
          border-width: 2px;
          border-style: solid;
          border-color: #a6da95;
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #a6da95;
	        background: #232136;
        }

        #battery {
          border-width: 2px;
          border-style: solid;
          border-color: #ea9a97;
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #ea9a97;
	        background: #232136;
        }


        #clock {
          border-width: 2px;
          border-style: solid;
          border-color: #f5c2e7;
	        margin-top: 4px;
	        margin-left: 8px;
	        margin-right: 12px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #f5c2e7;
	        background: #232136;
        }
      '';
    };
}
