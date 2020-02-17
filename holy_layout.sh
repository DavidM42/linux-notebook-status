#!/bin/sh
xrandr --dpi 314.7 \
    --output eDP-1 --mode 3840x2160 --pos 0x1696 \
    --output DP-2 --fb 7680x6016  --scale 2x2 --pos 3840x0

# dpi calculated as ppi via https://www.sven.de/dpi/
# I upscale external display to 4k via scale 2x2 instead of internal down
# pos 0x750 is cause external display is higher up
# fb is frame buffer which decides what is covered so has to be set for nothing to be black screen
# calucated via --> --fb 3840+2×1920 X 2160+6016+2×1080     # small number is position offset and x2 for 1080p is cause of 2x2 upscale


# spit out by arandr not sure if enough
# xrandr --output DP-3 --off --output DP-1 --off --output eDP-1 --primary --mode 3840x2160 --pos 0x1696 --rotate normal --output DP-2 --mode 1920x1080 --pos 3840x0 --rotate normal
