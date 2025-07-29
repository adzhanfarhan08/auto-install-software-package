# This script is used to manage user access and execution policies for PowerShell scripts.
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Bypass execution policy for the script
powershell -ExecutionPolicy Bypass -File "DIRECTORY"

# Restrict script execution policy to prevent unauthorized scripts from running
Set-ExecutionPolicy Restricted -Scope CurrentUser

# Check current execution policies
Get-ExecutionPolicy -List
