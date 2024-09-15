SESSION="go"

tmux has-session -t "$SESSION" 2>/dev/null

if [ $? != 0 ]; then
    # Start a new detached session 
    tmux new-session -d -s "$SESSION"

    # Source tmux.conf
    tmux source-file ~/.tmux.conf

    # Rename first window to run
    tmux rename-window -t 0 'run'

    # Create a new window for git and commands
    tmux new-window -t "$SESSION" -n 'git'

    # Create a new window for editing
    tmux new-window -t "$SESSION" -n 'edit'
fi

# Attach to session
tmux attach -t "$SESSION"
