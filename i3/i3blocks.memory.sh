#!/bin/sh

#top -bn1 | awk '/Mem/ { mem = "Memory in Use: " $5 / $3 * 100 "%" };
#                /Cpu/ { cpu = "CPU in Use: " 100 - $8 "%" };
#                END   { print mem ", " cpu }'

vmstat -s | awk  ' $0 ~ /total memory/ {total=$1 } $0 ~/free memory/ {free=$1} $0 ~/buffer memory/ {buffer=$1} $0 ~/cache/ {cache=$1} END{print int((total-free-buffer-cache)/total*100) "%"}'

