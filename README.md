SCP File Transfer

This repository contains a simple yet effective bash script that facilitates secure file transfers between a local machine and a remote server using SCP (Secure Copy Protocol). The script is designed to be user-friendly, prompting the user for necessary inputs such as the file path, remote server credentials, and destination path, and securely handles passwords.

Features
User Input Prompts: The script prompts for all required inputs, including the file path, remote server username, IP address, and destination path.
Secure Password Handling: The password is entered securely without echoing it on the screen, ensuring privacy.
Input Validation: Basic validation checks are in place to ensure that no required input is left empty.
Error Handling: The script checks for the success or failure of the file transfer and provides appropriate feedback to the user.
Compatibility: Requires sshpass to handle password authentication for SCP transfers.
Usage
Ensure sshpass is installed on your system. You can install it using the following command:

sudo apt-get install sshpass
Clone the repository to your local machine:

git clone https://github.com/Rathod11111/filetransfer.git

Navigate to the script directory:

cd scp-file-transfer-script
Make the script executable:

chmod +x scp-transfer.sh
Run the script:

./scp-transfer.sh
Follow the prompts to enter the required information:

File path to transfer
Remote server username
Remote server IP address or hostname
Destination path on the remote server
Password for the remote server
Check the output to confirm whether the file transfer was successful.

Example
============================================
             SCP File Transfer 
============================================
Enter the file path to transfer: /path/to/file.txt
Enter the username for the remote machine: username
Enter the IP address or hostname of the remote machine: 192.168.1.100
Enter the destination path on the remote machine: /home/username/
Enter the password for the remote machine:
File transfer successful!
