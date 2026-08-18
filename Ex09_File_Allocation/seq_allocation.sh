#!/bin/bash
echo "============================================="
echo " Ex 9: Sequential File Allocation Strategy  "
echo "============================================="

declare -A blocks

for ((i=0; i<20; i++)); do
    blocks[$i]=0
done

start=2
length=4

echo "Attempting to allocate File 1 (Start: $start, Length: $length)..."
allocated=1

for ((i=start; i<start+length; i++)); do
    if [ ${blocks[$i]} -ne 0 ]; then
        allocated=0
        break
    fi
done

if [ $allocated -eq 1 ]; then
    for ((i=start; i<start+length; i++)); do
        blocks[$i]=1
        echo "Block $i -> Allocated"
    done
    echo "File 1 Allocated Successfully!"
else
    echo "Allocation Failed!"
fi
