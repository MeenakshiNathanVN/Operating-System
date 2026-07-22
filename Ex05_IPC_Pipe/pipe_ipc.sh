#!/bin/bash
echo "========================================="
echo " Ex 5: Inter-Process Communication (IPC) "
echo "========================================="

pipe_name="my_pipe"

if [ -p "$pipe_name" ]; then
    rm "$pipe_name"
fi

mkfifo "$pipe_name"

echo "Parent process writing message to pipe..."
echo "Hello from Parent Process via Pipe!" > "$pipe_name" &

echo "Child process reading message from pipe..."
read msg < "$pipe_name"

echo -e "\nResult:"
echo "Received Message: $msg"

rm "$pipe_name"

