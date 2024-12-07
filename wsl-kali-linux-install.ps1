# Check if running as Administrator
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Please run this script as Administrator." -ForegroundColor Red
    exit
}

# Step 1: Enable WSL feature
Write-Host "Enabling WSL feature..." -ForegroundColor Cyan
wsl --install -y

# Step 2: Set WSL version to 2
Write-Host "Setting WSL 2 as the default version..." -ForegroundColor Cyan
wsl --set-default-version 2

# Step 3: Install Kali Linux distribution
Write-Host "Installing Kali Linux..." -ForegroundColor Cyan
wsl --install -d kali-linux

# Step 4: Wait for installation to complete
Write-Host "Installation in progress. Please wait until it's completed..." -ForegroundColor Yellow
Start-Sleep -Seconds 10  # Pause to allow installation to complete (adjust time as needed)

# Step 5: Launch Kali Linux and prompt for user setup (optional step)
Write-Host "Launching Kali Linux for initial setup..." -ForegroundColor Cyan
wsl -d kali-linux

# Finished message
Write-Host "Kali Linux installation completed! You can now start using it by typing 'wsl' or 'kali-linux' in the command line." -ForegroundColor Green
