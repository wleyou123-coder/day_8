#!/bin/bash

cpu=$(top -bn1 | grep "Cpu" | awk '{print $2}')

echo "CPU USAGE: $cpu"

if systemctl is-active --quiet nginx;then
echo "NGINX - active";else
echo "NGINX - no active";fi

echo "Disk USAGE:"
df -h /
