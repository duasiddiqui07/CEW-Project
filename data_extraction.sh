#!/bin/bash

# Set the time interval for data collection in seconds (e.g., 10 minutes = 600 seconds)
INTERVAL=600

# Infinite loop to periodically collect weather data
while true
do
    # Compile the C program with required libraries (CURL and JSON-C)
    gcc main.c -o weather_program -lcurl -ljson-c

    # Check the operating system type and execute the compiled program accordingly
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
        # Run the program for Windows systems
        ./weather_program.exe
    else
        # Run the program for Unix-based systems
        ./weather_program
    fi

    # Pause execution for the specified interval before the next data collection
    sleep $INTERVAL
done
