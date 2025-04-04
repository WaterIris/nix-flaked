{pkgs, ...}:

{
  programs.tmux = {
    enable = true;
    mouse = true;
    clock24 = true;
    baseIndex = 1;
    shell = "${pkgs.zsh}/bin/zsh";
    extraConfig = ''
      set -s escape-time 1
      set -g status-interval 1    
      set -g default-terminal "kitty"

      # remap prefix from 'C-b' to 'C-a'
      unbind C-b
      set-option -g prefix C-a
      bind-key C-a send-prefix
      

      # split panes using | and -
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      unbind '"'
      unbind %

      # don't rename windows automatically
      set-option -g allow-rename off
      
    '';
    plugins = with pkgs; [ 
      {
        plugin = tmuxPlugins.catppuccin;
        extraConfig = /* bash */ ''
            set -g @catppuccin_flavour 'macchiato'

            # set -g @catppuccin_window_default_text "#W"
            # set -g @catppuccin_window_current_text "#W"

            # set -g @catppuccin_status_left_separator  ""
            # set -g @catppuccin_status_right_separator " "
            # set -g @catppuccin_status_fill "all"
            # set -g @catppuccin_status_connect_separator "yes"
            #
            # set -g status-left ""
            # set -gF status-right "#{E:@catppuccin_status_application}#{E:@catppuccin_status_session}"
        '';
      }
      {
        plugin = tmuxPlugins.sensible;
      }
    ];
  };

  home.file.".config/tmux/tmux_start.sh" = {
    source = ./tmux_start.sh;
  };
}
