#!/bin/bash
set -eu
cat 360_setf1.txt | awk '{s += $2} END {print s}'
