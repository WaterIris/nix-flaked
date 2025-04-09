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

      # enable vi mode keys
      set-window-option -g mode-keys vi

      # set default terminal mode to 256 colors
      set -g default-terminal "xterm-256color"
      set -ga terminal-overrides ",xterm-256color:Tc"
      
      # DESIGN TWEAKS

      # panes
      set -g pane-border-style "fg=#956dca"
      set -g pane-active-border-style "fg=#956dca"

      # statusbar
      set -g status-position bottom
      set -g status-style "fg=#5679E3,bg=#101319"


      set -g status-left "#{?client_prefix,#[fg=#E34F4F],} 󰐤 #[fg=#5679E3] "
      # set -g status-left '#{?client_prefix,#[bg=#E34F4F],}󰐤 #[default] [#{session_name}] '
      set -g status-left-length 10

      set -g status-right "%Y-%m-%d %H:%M "
      set -g status-right-length 50

      setw -g window-status-current-style 'fg=#101319 bg=#5679E3'
      setw -g window-status-current-format ' #I #W #F '

      setw -g window-status-style 'fg=#5679E3 bg=#101319'
      setw -g window-status-format ' #I #[fg=white]#W #[fg=#5679E3]#F '


      # messages
      set -g message-style 'fg=#f4f3ee bg=#101319'
    '';
    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.sensible;
      }
    ];
  };

  home.file.".config/tmux/tmux_start.sh" = {
    source = ./tmux_start.sh;
  };
}
