{pkgs, ...}:
{
  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 12;
  };

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$terminal" = "wezterm";
      "$browser" = "firefox";
      "$run" = "rofi -show drun";
      "$mod" = "SUPER";

      "windowrulev2" = [ 
        "opacity 0.85, focus:1"
        "opacity 0.7, focus:0"
        "opacity 1.0,focus:1,class:firefox"
        "opacity 0.8,focus:0,class:firefox"
      ];
      
      monitor = [
        "eDP-1, 1920x1080@144,0x0,1"
        "HDMI-A-1, 2560x1080@144,1920x0,1"
      ];

      "workspace" = [
        "1,persistent:0"
        "2,persistent:0"
        "3,persistent:0"
        "4,persistent:0"
        "5,persistent:0"
        "6,persistent:0"
      ];

      exec-once = [ 
        "waybar"
      ];


      misc = {
    	  force_default_wallpaper = 0;
    	  disable_hyprland_logo = true;
      };

      bind = [
        "$mod, Return, exec, $terminal"
        "$mod, C, killactive,"
        "$mod, E, exec, $browser"
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
        gaps_in = 8;
        gaps_out = 10;
        border_size = 0;
        "col.active_border" = "rgb(89b4fa)";
        "col.inactive_border" = "rgb(94e2d5)";
        layout = "dwindle";
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      decoration = {
        rounding = 14;
      };

      bezier = [
        "easeOutQuint,0.23,1,0.32,1"
        "easeInOutCubic,0.65,0.05,0.36,1"
        "linear,0,0,1,1"
        "almostLinear,0.5,0.5,0.75,1.0"
        "quick,0.15,0,0.1,1"
      ];

      animation = [
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
