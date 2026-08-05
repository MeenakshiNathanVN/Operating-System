#!/bin/bash
echo "========================================="
echo " Ex 6: Shared Memory IPC Simulation     "
echo "========================================="

# Shared memory file simulation
shm_file="shared_mem.tmp"

# Writer
echo "Writing to Shared Memory..."
echo "Data: Shared Memory IPC Completed Successfully" > "$shm_file"

# Reader
echo "Reading from Shared Memory..."
cat "$shm_file"

# Clean up
rm "$shm_file"
