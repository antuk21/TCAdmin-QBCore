Clear-Host

Write-Host "============================================="
Write-Host "      TCAdmin QBCore Installer v1.0"
Write-Host "============================================="
Write-Host ""

# Check Git
$git = Get-Command git -ErrorAction SilentlyContinue

if ($null -eq $git)
{
    Write-Host "ERROR: Git is not installed!" -ForegroundColor Red
    pause
    exit
}

Write-Host "[OK] Git Found"
git --version

Write-Host ""

# Create folders
$Root = ".\server-data"
$Resources = "$Root\resources"
$QB = "$Resources\[qb]"

New-Item -ItemType Directory -Force $QB | Out-Null

Write-Host "[OK] Folder Structure Created"

Write-Host ""

# Clone qb-core
git clone https://github.com/qbcore-framework/qb-core.git "$QB\qb-core"

Write-Host ""

Write-Host "============================================="
Write-Host "Finished!"
Write-Host "============================================="

pause
