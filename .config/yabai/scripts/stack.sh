#!/bin/bash

# Get the current space information
current_space_info=$(yabai -m query --spaces --space)
current_layout=$(echo $current_space_info | jq -r '.type')

# Toggle between stack and bsp layouts
if [ "$current_layout" == "stack" ]; then
    yabai -m space --layout bsp
else
    yabai -m space --layout stack
fi

