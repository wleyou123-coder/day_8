#!/bin/bash

SRC="/home/raptorgg/day_8"
DIST="/home/raptorgg/day_8/backups/$(date +%Y-%m-%d)"

mkdir -p $DIST

tar -czf $DIST/$(date +%H-%M).tar.gz $SRC/*.log

