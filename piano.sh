#!/bin/bash

#xfce4-terminal -e /home/muneer/piano-c/pianosdl
xfce4-terminal --working-directory=/home/muneer/piano-c -e "make clean" -e "make" -e "make run"
