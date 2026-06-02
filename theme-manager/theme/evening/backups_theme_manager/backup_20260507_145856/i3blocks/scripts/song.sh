#!/usr/bin/env bash

LIMIT=40

ARTIST=$(mocp -Q "%artist" 2>/dev/null)
SONG=$(mocp -Q "%song" 2>/dev/null)
TIME=$(mocp -Q "[%ct/%tt]" 2>/dev/null)
STATE=$(mocp -Q "%state" 2>/dev/null)

if [ "$STATE" = "PLAY" ] || [ "$STATE" = "PAUSE" ]; then
    TEXT="$ARTIST - $SONG"
    [ ${#TEXT} -gt $LIMIT ] && TEXT="${TEXT:0:$LIMIT}..."
    echo "$TEXT $TIME"
else
    echo ""
    exit 1
fi
