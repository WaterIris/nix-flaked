{...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$terminal" = "wezterm";
      "$browser" = "firefox";
      "$run" = "rofi -show drun";
      "$mod" = "SUPER";
      "windowrule" = "opacity 0.9, wezterm";
      
      exec-once = [ 
        "waybar"
      ];

      monitor = [
        "eDP-1, 1920x1080@144, 0x0, 1" 
      ];

      misc = {
    	  force_default_wallpaper = 0;
    	  disable_hyprland_logo = false;
      };

      env = [
        "HYPRCURSOR_THEME,MyCursor"
        "HYPRCURSOR_SIZE,24"
      ];

      bind = [
        "$mod, Return, exec, $terminal"
        "$mod, C, killactive,"
        "$mod, Q, exec, $browser"
        "$mod, R, exec, $run"
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
      
      binde = [
        "ALT, Left, resizeactive, -10 0"
        "ALT, Right, resizeactive, 10 0"
        "ALT, Up, resizeactive, 0 -10"
        "ALT, Down, resizeactive, 0 10"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 5;
        border_size = 0;
        layout = "dwindle";
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      decoration = {
        rounding = 10;
      };

      bezier = [
        "easeOutQuint,0.23,1,0.32,1"
        "easeInOutCubic,0.65,0.05,0.36,1"
        "linear,0,0,1,1"
        "almostLinear,0.5,0.5,0.75,1.0"
        "quick,0.15,0,0.1,1"
      ];

      animation = [
	      "global, 1, 1.5, default"
    	    "border, 1, 2, easeOutQuint"
        "windows, 1, 1.5, linear"
          "windowsIn, 1, 1.5, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.5, linear, popin 87%"
          "windowsMove, 1, 3, linear, slide"
        "fade, 1, 1.49, quick"
          "fadeIn, 1, 1.5, almostLinear"
          "fadeOut, 1, 1.5, almostLinear"
          "fadeLayersIn, 1, 1.5, almostLinear"
          "fadeLayersOut, 1, 1.5, almostLinear"
        "layers, 1, 1.5, easeOutQuint"
          "layersIn, 1, 1.5, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
        "workspaces, 1, 3, almostLinear, slide"
          "workspacesIn, 1, 3, almostLinear, slide"
          "workspacesOut, 1, 3, almostLinear, slide"
      ];
    };
  };
}
