#!/bin/bash

xfce4-terminal --title="piano" --working-directory=/home/muneer/piano-c -e "make clean" -e "make" -e "make run"

# Give it time to spawn
sleep 0.2

# Make it floating, center it, and focus it
i3-msg '[title="piano"] floating enable, move position center, focus'

