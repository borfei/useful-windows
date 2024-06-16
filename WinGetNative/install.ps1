# Import AppX module if PowerShell edition is not Desktop
if ($PSVersionTable.PSEdition -ne "Desktop") {
    Write-Warning "PowerShell Core detected, this may require additional commands to import the Appx module."
    Write-Output "Importing Appx module.."
    Import-Module -Name Appx -UseWindowsPowerShell -WarningAction SilentlyContinue
}

Write-Output "Installing WinGet.."

# Prerequisites
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.VCLibs.x64.14.00.Desktop.Appx /SkipLicense
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.UI.Xaml.2.8.Appx /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.VCLibs.x64.14.00.Desktop.Appx
Add-AppxPackage -Path $PSScriptRoot\Microsoft.UI.Xaml.2.8.Appx

# WinGet / Desktop App Installer
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle /LicensePath:$PSScriptRoot\64b03c63cd5d4be8a28e8a271ff853cc_License1.xml
Add-AppxPackage -Path $PSScriptRoot\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

if ($PSVersionTable.PSEdition -ne "Desktop") {
    Write-Output "Removing Appx module from imports.."
    Remove-Module Appx -WarningAction SilentlyContinue
}

Write-Output "Done. You might restart your shell session to take changes."
