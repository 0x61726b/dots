#!/bin/bash

# Get the current display, space, and focused window information
current_display_info=$(yabai -m query --displays --display)
current_display=$(echo $current_display_info | jq '.index')
focused_window_id=$(echo $current_display_info | jq '.["focused-window"]')

# Get the easternmost window on the current space
easternmost_window_id=$(yabai -m query --windows --space | jq 'max_by(.frame.x + .frame.w) | .id')

# Check if the focused window is the easternmost window
if [ "$focused_window_id" == "$easternmost_window_id" ]; then
    echo "yes"
    next_display=$((current_display + 1))
    space_on_next_display=$(yabai -m query --spaces --display $next_display | jq 'map(select(.["is-native-fullscreen"] == false)) | .[0].index')

    if [ ! -z "$space_on_next_display" ]; then
        yabai -m space --focus $space_on_next_display
    fi
fi

