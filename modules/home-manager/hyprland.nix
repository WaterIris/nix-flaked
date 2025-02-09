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
    
    settings = {
      "$terminal" = "wezterm";
      "$browser" = "firefox";
      "$run" = "rofi -show drun";
      "$off" = "rofi -show power-menu";
      "$mod" = "SUPER";

      "input" = {
        "kb_layout" = "pl";
      };

      "windowrulev2" = [ 
        "opacity 0.85, focus:1"
        "opacity 0.7, focus:0"
        "opacity 1.0,focus:1,class:firefox"
        "opacity 0.8,focus:0,class:firefox"
      ];

      "monitor" = [
        "eDP-1, 1920x1080@144, 0x0, 1"
        "DP-1,2560x1440@144, 0x0, 1"
        "HDMI-A-1, 2560x1440x@144, 1920x0,1"
      ];

      "workspace" = [
        "1,persistent:1"
        "2,persistent:1"
        "3,persistent:1"
        "4,persistent:1"
        "5,persistent:1"
        "6,persistent:1"
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
        "$mod, R, exec, $run"
        "$mod, P, exec, $off"
        "$mod+Shift, M, exit,"
        
        "$mod, Left, movefocus, l"
        "$mod, Right, movefocus, r"
        "$mod, Up, movefocus, u"
        "$mod, Down, movefocus, d"
        
        "Alt, Tab, cyclenext,"
        "$mod, N, layoutmsg, swapsplit"

	      "$mod, 1, workspace, 1"
	      "$mod, 2, workspace, 2"
	      "$mod, 3, workspace, 3"
	      "$mod, 4, workspace, 4"
	      "$mod, 5, workspace, 5"
	      "$mod, 6, workspace, 6"

	      "$mod+Shift, 1, movetoworkspace, 1"
	      "$mod+Shift, 2, movetoworkspace, 2"
	      "$mod+Shift, 3, movetoworkspace, 3"
	      "$mod+Shift, 4, movetoworkspace, 4"
	      "$mod+Shift, 5, movetoworkspace, 5"
	      "$mod+Shift, 6, movetoworkspace, 6"
      ];
      
      "binde" = [
        "ALT, Left, resizeactive, -10 0"
        "ALT, Right, resizeactive, 10 0"
        "ALT, Up, resizeactive, 0 -10"
        "ALT, Down, resizeactive, 0 10"
      ];

      "general" = {
        gaps_in = 4;
        gaps_out = 4;
        border_size = 2;
        "col.active_border" = "rgb(286983)";
        "col.inactive_border" = "rgb(2a273f)";
        layout = "dwindle";
      };

      "dwindle" = {
        pseudotile = true;
        preserve_split = true;
      };

      "decoration" = {
        rounding = 14;
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
