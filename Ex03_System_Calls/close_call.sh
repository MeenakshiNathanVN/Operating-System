#!/bin/bash
echo "Sample file content for testing close system call" > sample.txt
exec 3< sample.txt
echo "File Opened Successfully"
exec 3<&-
echo "File Closed Successfully"

