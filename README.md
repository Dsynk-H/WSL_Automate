1. WSL and Kali Linux Installation Script

## Overview

This repository contains a PowerShell script to automate the installation of Windows Subsystem for Linux (WSL) and Kali Linux on Windows. By running this script, you can easily enable WSL, set WSL 2 as the default version, and install the Kali Linux distribution—all from the command line.

## Prerequisites

- Windows 10 (version 1903 or higher) or Windows 11
- Administrative privileges
- Internet connection

## Features

- Enables the WSL feature on Windows.
- Sets WSL 2 as the default version.
- Installs Kali Linux from the command line.
- Launches Kali Linux for initial user setup.

## How to Use

1. **Download the script**:
   Clone the repository or download the `install-wsl-kali.ps1` file to your local machine.

   ```bash
   git clone https://github.com/Dsynk/wsl-kali-installer.git
   cd wsl-kali-installer

2. Run the script: Open PowerShell as an Administrator, go the directory where the file is placed and run the script:
  
`.\wsl-kali-linux-install.ps1`


Note: Incase if you are getting an error while executing the script then. Set the execution Policy with the following command:


Commmand: 

`Set-ExecutionPolicy RemoteSigned`

You’ll see a security risk warning. Type “Y” or “A” when prompted to proceed. That’s all! This should solve the issue.
