#!/bin/bash

HOME=/home/raptorgg/day_8
DIST=/home/raptorgg/day_8/backups/logs/$(date +%Y-%m-%d)
mkdir -p $DIST

tar -czf $DIST/log_$(date +%H-%M).tar.gz $HOME/*.log

find /home/raptorgg/day_8/backups/logs -type f -mmin +3 -delete
