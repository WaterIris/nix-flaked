{pkgs, ...}:
{
  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 12;
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgs.flat-remix-gtk;
      name = "Flat-Remix-GTK-Grey-Darkest";
    };
    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };
  };

  wayland.windowManager.hyprland = {
    enable = true;
    #systemd = { 
      #enable = true;
      #variables = ["--all"];
    #};  

    settings = {
      "$terminal" = "kitty";
      "$browser" = "firefox";
      "$run" = "rofi -show drun";
      "$off" = "rofi -show power-menu";
      "$mod" = "SUPER";
      "$screen_shot" = "gscreenshot -s -f ~/Downloads/screen.png -c";

      "input" = {
        "kb_layout" = "pl";
      };

       gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = false;
        workspace_swipe_forever	= true;
      };

      workspace = [
        "1, monitor:HDMI-A-1, default:true"
        "2, monitor:HDMI-A-1, default:true"
        "3, monitor:HDMI-A-1, default:true"
        "4, monitor:HDMI-A-1, default:true"
        "5, monitor:HDMI-A-1, default:true"
        "6, monitor:HDMI-A-1, default:true"
        "7, monitor:HDMI-A-1, default:true"
        "8, monitor:HDMI-A-1, default:true"
        "9, monitor:eDP-1, default:true"
      ];

      "windowrulev2" = [ 
        "opacity 0.85, focus:1"
        "opacity 0.70, focus:0"

        "opacity 1.00,focus:1,class:firefox"
        "opacity 0.70,focus:0,class:firefox"

        "opacity 0.90,focus:1,class:kitty"
        "opacity 0.70,focus:0,class:kitty"

        "workspace 1, class:kitty"
        "workspace 2, class:firefox"
        "workspace 3, class:obsidian"
        "workspace 8, class:Spotify"
      ];

      "monitor" = [
        "eDP-1, 1920x1080@144, 0x0, 1"
        "HDMI-A-1, 2560x1440x@144, 1920x0,1"
      ];

      "exec-once" = [ 
        "waybar"
        "dunst"
      ];

      "env" = [
        "LIBVA_DRIVER_NAME,nvidia"
        "XCURSOR_SIZE,12"
      ];


      "misc" = {
    	  force_default_wallpaper = 0;
    	  disable_hyprland_logo = true;
      };

      "bind" = [
        "$mod, Return, exec, $terminal"
        "$mod, C, killactive,"
        "$mod, E, exec, $browser"
        "$mod, S, exec, $screen_shot"
        "$mod, R, exec, $run"
        "$mod, P, exec, $off"
        "$mod+Shift, M, exit"
        
        "$mod, Left, movefocus, l"
        "$mod, Right, movefocus, r"
        "$mod, Up, movefocus, u"
        "$mod, Down, movefocus, d"
        
        "Alt, Tab, cyclenext,"
        "$mod, N, layoutmsg, swapsplit"
        "$mod, B, layoutmsg, togglesplit"

	      "$mod, 1, workspace, 1"
	      "$mod, 2, workspace, 2"
	      "$mod, 3, workspace, 3"
	      "$mod, 4, workspace, 4"
	      "$mod, 5, workspace, 5"
	      "$mod, 6, workspace, 6"
	      "$mod, 7, workspace, 7"
	      "$mod, 8, workspace, 8"
	      "$mod, 9, workspace, 9"

	      "$mod+Shift, 1, movetoworkspace, 1"
	      "$mod+Shift, 2, movetoworkspace, 2"
	      "$mod+Shift, 3, movetoworkspace, 3"
	      "$mod+Shift, 4, movetoworkspace, 4"
	      "$mod+Shift, 5, movetoworkspace, 5"
	      "$mod+Shift, 6, movetoworkspace, 6"
	      "$mod+Shift, 7, movetoworkspace, 7"
	      "$mod+Shift, 8, movetoworkspace, 8"
	      "$mod+Shift, 9, movetoworkspace, 9"
      ];
      
      "binde" = [
        "ALT, Left, resizeactive, -10 0"
        "ALT, Right, resizeactive, 10 0"
        "ALT, Up, resizeactive, 0 -10"
        "ALT, Down, resizeactive, 0 10"
      ];

      "general" = {
        gaps_in = "0px";
        gaps_out = "0px";
        border_size = 0;
        "col.active_border" = "rgb(DE642B)";
        "col.inactive_border" = "rgb(101319)";
        layout = "dwindle";
      };

      "dwindle" = {
        pseudotile = true;
        preserve_split = true;
      };

      "decoration" = {
        rounding = 0;
        blur = {
          enabled = false;
        };
      };

      "bezier" = [
        "easeOutQuint,0.23,1,0.32,1"
        "easeInOutCubic,0.65,0.05,0.36,1"
        "linear,0,0,1,1"
        "almostLinear,0.5,0.5,0.75,1.0"
        "quick,0.15,0,0.1,1"
      ];

      "animation" = [
	      "global, 1, 10, default"
    	    "border, 1, 5.39, easeOutQuint"
        "windows, 1, 4.0, linear"
          "windowsIn, 1, 3.0, easeOutQuint, popin 87%"
          "windowsOut, 1, 2.0, linear, popin 87%"
          "windowsMove, 1, 2.0, linear, slide"
        "fade, 1, 1.49, quick"
          "fadeIn, 1, 1.0, almostLinear"
          "fadeOut, 1, 1.0, almostLinear"
          "fadeLayersIn, 1, 3.0, almostLinear"
          "fadeLayersOut, 1, 1.5, almostLinear"
        "layers, 1, 4.0, easeOutQuint"
          "layersIn, 1, 1.5, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
        "workspaces, 1, 3, almostLinear, slide"
          "workspacesIn, 1, 3, almostLinear, slide"
          "workspacesOut, 1, 3, almostLinear, slide"
      ];
    };
  };
}
