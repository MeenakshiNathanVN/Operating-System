#!/bin/bash
echo "========================================="
echo " Ex 7: FIFO Page Replacement Algorithm   "
echo "========================================="

pages=(4 1 2 4 5 4 0 5 7 2)
frames=(-1 -1 -1)
capacity=3
faults=0
pointer=0

for page in "${pages[@]}"; do
    hit=0
    for f in "${frames[@]}"; do
        if [ "$f" -eq "$page" ]; then
            hit=1
            break
        fi
    done

    if [ $hit -eq 0 ]; then
        frames[$pointer]=$page
        pointer=$(( (pointer + 1) % capacity ))
        faults=$((faults + 1))
        echo "Page $page -> FAULT | Frames: ${frames[*]}"
    else
        echo "Page $page -> HIT   | Frames: ${frames[*]}"
    fi
done

echo -e "\nTotal Page Faults: $faults"
