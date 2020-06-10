# This is all based on the article at: https://community.home-assistant.io/t/remotely-shutting-down-a-windows-10-pc-with-ssh/91715
# Install the bits we want:

# Install OpenSSH Client and Server
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

# Start it up
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'

# Create ~/.ssh if it doens't exist

# set the ~/.ssh/authorized_keys to have the following permissions
# Click “Disable Inheritance”, then choose “Convert inherited permissions into explicit permissions on this object”
# Remove all permissions on the file except for SYSTEM and your user. There should only be two entries in the list, both with “Full Control”
