SESSION="go"

# Start a new detached session 
tmux new-session -d -s "$SESSION"

# Rename first window to run
tmux rename-window -t 0 'run'

# Create a new window for editing
tmux new-window -t "$SESSION" -n 'edit'

# Create a new window for git and commands
tmux new-window -t "$SESSION" -n 'git'

# Attach to session
tmux attach -t "$SESSION"
