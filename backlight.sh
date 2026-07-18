#!/bin/bash

echo 1 | pkexec tee /sys/class/backlight/radeon_bl0/brightness
