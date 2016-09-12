#!/bin/sh
SESSION_NAME='smashgg'

# Create the session
tmux new-session -s ${SESSION_NAME} -n server -d

# First window (0) -- server
tmux send-keys -t ${SESSION_NAME}:0 'web' C-m
tmux send-keys -t ${SESSION_NAME}:0 'serve'

# web (1)
tmux new-window -n web -t ${SESSION_NAME}
tmux send-keys -t ${SESSION_NAME}:1 'web' C-m

# api (2)
tmux new-window -n api -t ${SESSION_NAME}
tmux send-keys -t ${SESSION_NAME}:2 'api' C-m

# script and dev (3)
tmux new-window -n script -t ${SESSION_NAME}
tmux send-keys -t ${SESSION_NAME}:3 'script' C-m
tmux split-window -h -t ${SESSION_NAME}:3
tmux send-keys -t ${SESSION_NAME}:3.1 'dev' C-m

# bash (4)
tmux new-window -n bash -t ${SESSION_NAME}
tmux send-keys -t ${SESSION_NAME}:4 'web' C-m

# notes (5)
tmux new-window -n notes -t ${SESSION_NAME}
tmux send-keys -t ${SESSION_NAME}:5 'notes' C-m

# Start out on the first window when we attach
tmux select-window -t ${SESSION_NAME}:0

tmux attach
