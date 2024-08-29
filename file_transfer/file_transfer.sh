#!/bin/bash

# Function to prompt for input
prompt_for_input() {
    read -p "$1: " input
    echo $input
}

# Function to prompt for the password without echoing it
prompt_for_password() {
    read -s -p "$1: " password
    echo $password
}

# Display a banner
echo "============================================"
echo "      SCP File Transfer Script"
echo "============================================"

# Get the filename or path of the file to be transferred
file_path=$(prompt_for_input "Enter the file path to transfer")

# Get the username for the remote machine
remote_user=$(prompt_for_input "Enter the username for the remote machine")

# Get the IP address or hostname of the remote machine
remote_ip=$(prompt_for_input "Enter the IP address or hostname of the remote machine")

# Get the destination path on the remote machine
remote_path=$(prompt_for_input "Enter the destination path on the remote machine")

# Get the password for the remote machine
remote_password=$(prompt_for_password "Enter the password for the remote machine")

# Add a newline after the password input
echo ""

# Perform the SCP transfer
sshpass -p $remote_password scp $file_path ${remote_user}@${remote_ip}:${remote_path}

# Check if the transfer was successful
if [ $? -eq 0 ]; then
    echo "File transfer successful!"
else
    echo "File transfer failed!"
fi