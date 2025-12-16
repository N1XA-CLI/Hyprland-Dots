#!/bin/bash

status=$(playerctl status 2>/dev/null)

if [ "$status" = "Playing" ]; then
    icon=""   # pause icon
else
    icon=""   # play icon
fi

artist=$(playerctl --ignore-player=brave metadata artist 2>/dev/null)
title=$(playerctl --ignore-player=brave metadata title 2>/dev/null)

if [ -z "$artist" ] && [ -z "$title" ]; then
    echo "$icon  Nothing playing"
    exit 1
else
    #echo "$icon $artist - $title"
    echo "$icon $title"
fi
