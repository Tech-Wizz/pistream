#!/bin/bash
# Function to check network connection
check_network() {
    while ! ping -c 1 -W 1 google.com; do
        echo "Waiting for network connection..."
        sleep 5
    done
}

# Wait for the desktop to load
sleep 10

# Check for network connection
check_network

# Open the URL in Chromium in full screen mode
chromium-browser --start-fullscreen --start-maximized --app=https://intraweb.mtsilver.com/prd/PayScore.aspx
