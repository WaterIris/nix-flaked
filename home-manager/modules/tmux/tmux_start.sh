# Start a new detached tmux session named GFG_Session
tmux new-session -d -s iris_ses -n Code
tmux new-window -t iris_ses -n Dotfiles
tmux send-keys -t iris_ses "cd ./.config/nix-flaked" C-m
tmux send-keys -t iris_ses "clear" C-m
tmux select-window -t Code
tmux select-pane -t 1

# Attach to the tmux session
tmux attach-session -t iris_ses
