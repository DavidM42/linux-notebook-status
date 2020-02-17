#!/bin/bash
# thanks to
# https://stackoverflow.com/a/9574123 for base watch like loop
# https://askubuntu.com/a/218570 cpu frequency command
# https://unix.stackexchange.com/a/68537 battery command
# https://askubuntu.com/a/383874 memory command
# htop in new window https://askubuntu.com/a/46630

gnome-terminal -e htop > /dev/null 2>&1
while :;
  do
  clear
  date
  lscpu | grep MHz
  #lscpu | grep 'MHz\|frequenz'  
  echo ""
  echo "Battery drain:"
  awk '{print $1*10^-6 " W"}' /sys/class/power_supply/BAT0/power_now
  echo ""
  echo "Most extensive RAM use apps"
  ps --sort -rss -eo pid,pmem,rss,vsz,comm | head -13
  sleep 2s
done
