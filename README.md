# SCP File Transfer Script

A bash script designed for secure and efficient file transfer using SCP (Secure Copy Protocol). This script prompts the user for necessary inputs, including file path, remote server credentials, and destination path, and ensures a smooth transfer with secure password handling.

## Features

- **User-Friendly Prompts**: Input prompts for all necessary details such as file path, remote server username, IP address, and destination directory.
- **Secure Password Input**: Passwords are securely entered without being displayed on the screen.
- **Input Validation**: Ensures that all required inputs are provided to avoid errors during execution.
- **Error Handling**: The script checks if the file transfer was successful and provides feedback to the user.
- **`sshpass` Integration**: Utilizes `sshpass` to handle password authentication for non-interactive SCP transfers.

## Prerequisites

Before using the script, ensure that `sshpass` is installed on your system. You can install it using the following command:

```bash
sudo apt-get install sshpass
```

## Usage
**Follow these steps to use the script:**

Clone the repository to your local machine:
```bash
git clone https://github.com/yourusername/scp-file-transfer-script.git
```
**Navigate to the script directory:**
```bash
cd scp-file-transfer-script
```
**Make the script executable:**
```bash
chmod +x scp-transfer.sh
```
**Run the script:**

```bash
./scp-transfer.sh
```
## Enter the required information when prompted:

- The path to the file you want to transfer.
- Your username for the remote server.
- The IP address or hostname of the remote server.
- The destination directory on the remote server.
- The password for your remote server account.

## Example Output

**When you run the script, you should see something like this:**
```
 ============================================ 
           ** SCP File Transfer **
 ============================================  
 
- Enter the file path to transfer: /path/to/file.txt
- Enter the username for the remote machine: username
- Enter the IP address or hostname of the remote machine: 192.168.1.100
- Enter the destination path on the remote machine: /home/username/
- Enter the password for the remote machine:
- File transfer successful!
```
