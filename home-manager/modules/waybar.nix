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
          ];

          modules-right = [
            "network"
            "pulseaudio"
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
	        min-height: 32px;
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
	        margin-left: 12px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        background: #232136;
	        transition: none;
        }

        #workspaces button {
	        transition: none;
	        color: #f8f8f2;
	        background: transparent;
	        font-size: 16px;
        }

        #workspaces button:hover {
	        transition: none;
	        box-shadow: inherit;
	        text-shadow: inherit;
	        color: #eb6f92;
        }

        #network {
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #232136;
	        background: #c4a7e7;
        }

        #pulseaudio {
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #232136;
	        background: #56949f;
        }

        #temperature {
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #232136;
	        background: #f6c177;
        }

        #cpu {
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #232136;
	        background: #f6c177;
        }

        #memory {
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #232136;
	        background: #eb6f92;
        }

        #disk {
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #232136;
	        background: #a6da95;
        }

        #battery {
	        margin-top: 4px;
	        margin-left: 8px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #232136;
	        background: #ea9a97;
        }


        #clock {
	        margin-top: 4px;
	        margin-left: 8px;
	        margin-right: 12px;
	        padding-left: 16px;
	        padding-right: 16px;
	        margin-bottom: 0;
	        border-radius: 26px;
	        transition: none;
	        color: #f8f8f2;
	        background: #232136;
        }
      '';
    };
}
