#!/bin/sh
xrandr --dpi 314.7 \
    --output eDP-1 --mode 3840x2160 --pos 0x1696 \
    --output DP-2 --fb 7680x6016  --scale 2x2 --pos 3840x0
# could be shrinked to one but works with my holy layout and this from arandr combined
xrandr --output DP-3 --off --output DP-1 --off --output eDP-1 --primary --mode 3840x2160 --pos 1560x2376 --rotate normal --output DP-2 --mode 1920x1080 --pos 0x0 --rotate normal
