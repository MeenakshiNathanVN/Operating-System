#!/bin/bash
echo "============================================="
echo " Ex 10: Single Level Directory Simulation    "
echo "============================================="

dir_name="MyRootFolder"
files=("file1.txt" "file2.txt" "file3.txt")

echo "Directory Name: $dir_name"
echo "Creating files inside single directory..."

for f in "${files[@]}"; do
    echo "Creating file: $f"
done

echo -e "\nList of files in $dir_name:"
for f in "${files[@]}"; do
    echo "- $f"
done

