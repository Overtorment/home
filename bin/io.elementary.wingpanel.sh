#!/bin/bash

# Name of the process to check
PROCESS_NAME="wingpanel.bak"

# Command to start the process if not running
START_COMMAND="/usr/bin/io.elementary.wingpanel.bak"

# Check if the process is running
PID=$(pgrep -f "$PROCESS_NAME")


if [ -z "$PID" ]; then
    $START_COMMAND &
    echo "Process  started."
else
    echo "Process '$PROCESS_NAME' is running with PID $PID. Killing it..."
    echo killing...
    kill -9 $PID
fi

