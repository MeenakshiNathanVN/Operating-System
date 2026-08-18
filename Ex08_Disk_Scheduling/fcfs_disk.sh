#!/bin/bash
echo "========================================="
echo " Ex 8: FCFS Disk Scheduling Algorithm   "
echo "========================================="

requests=(98 183 37 122 14 124 65 67)
head=53
seek_time=0

echo "Initial Head Position: $head"
echo -n "Path: $head"

for req in "${requests[@]}"; do
    diff=$(( req - head ))
    if [ $diff -lt 0 ]; then
        diff=$(( diff * -1 ))
    fi
    seek_time=$(( seek_time + diff ))
    head=$req
    echo -n " -> $head"
done

echo -e "\n\nTotal Seek Time: $seek_time"
avg=$(awk "BEGIN {printf \"%.2f\", $seek_time/${#requests[@]}}")
echo "Average Seek Time: $avg"
