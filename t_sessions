#!/bin/bash

SESSIONS=("run", "edit", "git")

# Start sessions if they don't exist

for SESSION in "${SESSIONS[@]}"; do
    tmux has-session -t $SESSION 2>/dev/null

    if [ $? != 0 ]; then
        tmux new-session -d -s $SESSION -c $PWD
    fi
done

# Attach to "run" session
tmux attach -t ${SESSIONS[0]}
