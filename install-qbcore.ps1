Write-Host ""
Write-Host "====================================="
Write-Host " TCAdmin QBCore Installer"
Write-Host "====================================="
Write-Host ""

$ServerData = ".\server-data"

Write-Host "Checking server-data..."

if (!(Test-Path $ServerData))
{
    Write-Host "Creating server-data..."
    New-Item -ItemType Directory $ServerData
}

Write-Host ""
Write-Host "Installer is working!"
Write-Host ""
