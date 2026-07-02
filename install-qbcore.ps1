Write-Host ""
Write-Host "========================================="
Write-Host " TCAdmin QBCore Installer"
Write-Host "========================================="
Write-Host ""

$Git = Get-Command git -ErrorAction SilentlyContinue

if ($null -eq $Git)
{
    Write-Host "Git is not installed!" -ForegroundColor Red
    exit
}

Write-Host "Git Found:"
git --version

Write-Host ""
Write-Host "Installer Ready"
