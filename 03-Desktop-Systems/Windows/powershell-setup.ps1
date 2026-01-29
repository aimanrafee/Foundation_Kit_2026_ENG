<#
 .SYNOPSIS
  Foundation Kit 2026 - Windows Environment Setup
 .DESCRIPTION
  Automates the installation of development tools using 'Winget'.
#>

Write-Host "--- 🏛️ Starting Foundation Kit Windows Setup ---" -ForegroundColor Cyan

# 1. Check for Admin Rights
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "Please run this script as Administrator!"
    exit
}

# 2. Update Winget (Windows Package Manager)
Write-Host "[1/3] Updating System Package Manager..." -ForegroundColor Yellow
winget source update

# 3. Install Core Development Tools
$apps = @("Git.Git", "Microsoft.VisualStudioCode", "Nodejs.Nodejs", "Python.Python.3")

foreach ($app in $apps) {
    Write-Host "Installing: $app..." -ForegroundColor Green
    winget install --id $app --silent --accept-package-agreements --accept-source-agreements
}

# 4. Set Foundation Environment Variables
Write-Host "[2/3] Setting Foundation Environment Variables..." -ForegroundColor Yellow
[Environment]::SetEnvironmentVariable("FOUNDATION_KIT_VERSION", "2026.1.0", "User")

# 5. Summary
Write-Host "[3/3] Setup Complete!" -ForegroundColor Cyan
Write-Host "Apps Installed: Git, VS Code, Node.js, Python"
Write-Host "Please restart your terminal to apply changes."
