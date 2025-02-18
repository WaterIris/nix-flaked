{pkgs, ...}:
{
  programs.waybar = {
    enable = true;
    # package = pkgs.waybar;
      settings = [
        {
          layer = "top";
          position = "top";
          fixed-center= true;
          modules-left = [ 
            "battery"
            "pulseaudio"
            "network"
          ];

          modules-center = [
            "hyprland/workspaces"
          ];

          modules-right = [
            "cpu"
            "memory"
            "disk"
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
		        tooltip = true;
            tooltip-format = "{essid}";
		        format-wifi = "  {essid}";
		        format-ethernet = "󰈀 {essid}";
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

      style = ''
        * {
	        border: none;
	        border-radius: 8px;
	        font-family: JetBrainsMono Nerd Font;
	        font-size: 14px;
          font-weight: bold;
        }

        window#waybar {
	        background: transparent;
        }

        window#waybar.hidden {
	        opacity: 0.2;
        }

        #window {
          margin-top: 4px;
          padding-left: 0px;
          padding-right: 0px;
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
	        margin-left: 5px;
	        margin-right: 5px;
	        margin-bottom: 0;
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        transition: none;
          color: #f4f3ee;
	        background: #101319;
        }

        #workspaces button {
	        transition: none;
	        background: transparent;
          color: #f4f3ee;
	        background: #101319;
        }
        
        #workspaces button.empty{
          transition: none;
	        box-shadow: inherit;
	        text-shadow: inherit;
	        color: #3A435A;

        }

        #workspaces button:hover {
	        transition: none;
	        box-shadow: inherit;
	        text-shadow: inherit;
	        color: #e37e4f;
        }

        #workspaces button.active {
	        transition: none;
	        box-shadow: inherit;
	        text-shadow: inherit;
	        color: #DE642B;
        }

        #network {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 5px;
	        margin-right: 5px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #56B7C8;
	        background: #101319;
        }

        #pulseaudio {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 5px;
	        margin-right: 5px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #885AC4;
	        background: #101319;
        }

        #temperature {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 5px;
	        margin-right: 5px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #f4f3ee;
	        background: #101319;
        }

        #cpu {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 5px;
	        margin-right: 5px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #3E66E0;
	        background: #101319;
        }

        #memory {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 5px;
	        margin-right: 5px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #DE642B;
	        background: #101319;
        }

        #disk {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 5px;
	        margin-right: 5px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #885AC4;
	        background: #101319;
        }

        #battery {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 10px;
	        margin-right: 5px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #E34F4F;
	        background: #101319;
        }


        #clock {
          border-width: 3px;
          border-style: solid;
          border-color: #101319;
	        margin-top: 4px;
	        margin-left: 5px;
	        margin-right: 10px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        transition: none;
	        color: #E34F4F;
	        background: #101319;
        }
      '';
    };
}
