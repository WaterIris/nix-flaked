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
        plugin = tmuxPlugins.gruvbox;
        extraConfig = /* bash */ ''
          set -g @tmux-gruvbox 'dark256' # or 'dark256', 'light', 'light256'
          set -g @tmux-gruvbox-left-status-a '#S' # tmux's session name
          set -g @tmux-gruvbox-right-status-x '%d.%m.%Y' # e.g.: 30.01.2024
          set -g @tmux-gruvbox-right-status-z '#h #{tmux_mode_indicator}'
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
