#!/usr/bin/env bash
# Depends on rofi and surfraw
surfraw -browser=firefox $(sr -elvi   | \ 
  awk -F'-' '{print $1}' | sed '/:/d' | \
  awk '{$1=$1};1' | rofi -kb-row-select "Tab" -kb-row-tab "Control+space" \
  -color-window "#000000, #000000, #000000" -color-normal "#000000, #b3e774, #000000, #b3e774, #000000" \
  -color-active "#000000, #b3e774, #000000, #b3e774, #000000" \
  -color-urgent "#000000, #b3e774, #000000, #b3e774, #000000" \
  -dmenu -mesg ">>> Tab = Autocomplete" -i -p "websearch: ")
