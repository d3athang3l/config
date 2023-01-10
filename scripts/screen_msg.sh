#!/bin/bash
bspc subscribe desktop_focus | while read ; do
  dunstify -r 5555 -u normal `bspc query -D -d --names`
done
