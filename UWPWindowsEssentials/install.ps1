# Import AppX module if PowerShell edition is not Desktop
if ($PSVersionTable.PSEdition -ne "Desktop") {
    Write-Warning "PowerShell Core detected, this may require additional commands to import the Appx module."
    Write-Output "Importing Appx module.."
    Import-Module -Name Appx -UseWindowsPowerShell -WarningAction SilentlyContinue
}

Write-Output "Installing Windows Essentials.."

# Prerequisites
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.VCLibs.140.00_14.0.33519.0_x64__8wekyb3d8bbwe.Appx /SkipLicense
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.NET.Native.Framework.2.2_2.2.29512.0_x64__8wekyb3d8bbwe.Appx /SkipLicense
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x64__8wekyb3d8bbwe.Appx /SkipLicense
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.WindowsAppRuntime.1.3_3000.934.1904.0_x64__8wekyb3d8bbwe.Msix /SkipLicense
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.UI.Xaml.2.3_2.32002.13001.0_x64__8wekyb3d8bbwe.Appx /SkipLicense
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.UI.Xaml.2.7_7.2208.15002.0_x64__8wekyb3d8bbwe.Appx /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.VCLibs.140.00_14.0.33519.0_x64__8wekyb3d8bbwe.Appx
Add-AppxPackage -Path $PSScriptRoot\Microsoft.NET.Native.Framework.2.2_2.2.29512.0_x64__8wekyb3d8bbwe.Appx
Add-AppxPackage -Path $PSScriptRoot\Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x64__8wekyb3d8bbwe.Appx
Add-AppxPackage -Path $PSScriptRoot\Microsoft.WindowsAppRuntime.1.3_3000.934.1904.0_x64__8wekyb3d8bbwe.Msix
Add-AppxPackage -Path $PSScriptRoot\Microsoft.UI.Xaml.2.3_2.32002.13001.0_x64__8wekyb3d8bbwe.Appx
Add-AppxPackage -Path $PSScriptRoot\Microsoft.UI.Xaml.2.7_7.2208.15002.0_x64__8wekyb3d8bbwe.Appx

# Windows Clock
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.WindowsAlarms_2022.2401.9.0_neutral_~_8wekyb3d8bbwe.MsixBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.WindowsAlarms_2022.2401.9.0_neutral_~_8wekyb3d8bbwe.MsixBundle
# Windows Calculator
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.WindowsCalculator_2021.2403.6.0_neutral_~_8wekyb3d8bbwe.Msixbundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.WindowsCalculator_2021.2403.6.0_neutral_~_8wekyb3d8bbwe.Msixbundle
# Windows Maps
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.WindowsMaps_2022.2403.4.0_neutral_~_8wekyb3d8bbwe.Msixbundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.WindowsMaps_2022.2403.4.0_neutral_~_8wekyb3d8bbwe.Msixbundle
# Windows Sound Recorder
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.WindowsSoundRecorder_2021.2103.28.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.WindowsSoundRecorder_2021.2103.28.0_neutral_~_8wekyb3d8bbwe.AppxBundle

if ($PSVersionTable.PSEdition -ne "Desktop") {
    Write-Output "Removing Appx module from imports.."
    Remove-Module Appx -WarningAction SilentlyContinue
}

Write-Output "Done."
