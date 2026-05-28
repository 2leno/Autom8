#!/bin/bash
DATE=$(date '+%Y-%m-%d %H:%M:%S')
RAM=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
CPU=$(top -bn1 | grep 'Cpu(s)' | awk '{print $2}' | cut -d'%' -f1)
DISK=$(df -h / | awk 'NR==2 {print $5}')
echo "$DATE - RAM: $RAM - CPU: $CPU% - DISK: $DISK"