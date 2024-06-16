# Import AppX module if PowerShell edition is not Desktop
if ($PSVersionTable.PSEdition -ne "Desktop") {
    Write-Warning "PowerShell Core detected, this may require additional commands to import the Appx module."
    Write-Output "Importing Appx module.."
    Import-Module -Name Appx -UseWindowsPowerShell -WarningAction SilentlyContinue
}

Write-Output "Installing Windows Media Codecs.."

# Visual C++ UWP libraries
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.VCLibs.140.00_14.0.33519.0_x64__8wekyb3d8bbwe.Appx /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.VCLibs.140.00_14.0.33519.0_x64__8wekyb3d8bbwe.Appx
# AV1 Video Extension
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.AV1VideoExtension_1.2.931.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.AV1VideoExtension_1.2.931.0_neutral_~_8wekyb3d8bbwe.AppxBundle
# HEIF Image Extension
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.HEIFImageExtension_1.1.861.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.HEIFImageExtension_1.1.861.0_neutral_~_8wekyb3d8bbwe.AppxBundle
# Raw Image Extension
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.RawImageExtension_2.2.1222.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.RawImageExtension_2.2.1222.0_neutral_~_8wekyb3d8bbwe.AppxBundle
# WebP Image Extension
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.WebpImageExtension_1.1.1221.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.WebpImageExtension_1.1.1221.0_neutral_~_8wekyb3d8bbwe.AppxBundle
# HEVC Video Extension
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.HEVCVideoExtension_2.1.1161.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.HEVCVideoExtension_2.1.1161.0_neutral_~_8wekyb3d8bbwe.AppxBundle
# MPEG-2 Video Extension
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.MPEG2VideoExtension_1.0.61931.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.MPEG2VideoExtension_1.0.61931.0_neutral_~_8wekyb3d8bbwe.AppxBundle
# VP9 Video Extensions
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.VP9VideoExtensions_1.1.451.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.VP9VideoExtensions_1.1.451.0_neutral_~_8wekyb3d8bbwe.AppxBundle
# Web Media (WebM) Extensions
dism /Online /Add-ProvisionedAppxPackage /PackagePath:$PSScriptRoot\Microsoft.WebMediaExtensions_1.1.1295.0_neutral_~_8wekyb3d8bbwe.AppxBundle /SkipLicense
Add-AppxPackage -Path $PSScriptRoot\Microsoft.WebMediaExtensions_1.1.1295.0_neutral_~_8wekyb3d8bbwe.AppxBundle

if ($PSVersionTable.PSEdition -ne "Desktop") {
    Write-Output "Removing Appx module from imports.."
    Remove-Module Appx -WarningAction SilentlyContinue
}

Write-Output "Done."
