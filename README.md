# Useful Windows
> [!IMPORTANT]
> For the best experience of Useful Windows, use Windows 10/11 Enterprise LTSC.

A set of scripts & tweaks to make your Windows experience!

You can download the latest release [here.](https://github.com/spir0th/useful-windows/releases/latest)

## Why?
This repository has the stuff all you need for customizing your Windows installation without some shenanigans, from installing [WinGet](https://github.com/microsoft/winget-cli) for downloading programs without Microsoft Store and even a web browser, to disabling the pesky `gaming-overlay` link pop-up you see in LTSC editions of Windows.

*In fact, I even use this repository whenever I re-install Windows.*

## Explanation
Files have been organized into three places:
- `UWPMediaCodecs`
    - Improves media playback support for UWP applications
    - Recommended for users who tend to like Microsoft's UWP media apps such as Photos, or the new Media Player
- `UWPWindowsEssentials`
    - Replaces some Win32 apps with their new respective UWP apps 
    - Really needed if you work on a company or doing productivity
- `WinGetNative`
    - It installs WinGet without Microsoft Store, useful enough for new Windows 10/11 LTSC installations.
    - *WinGet does somehow support installation of UWP apps, so you might install this first before installing other UWP apps.*
- `WinTweaks32`
    - Includes restoring the functionality of Windows Photo Viewer, optimizing drives by disabling DOS filename creations, etc.
    - Note that the registry files might cause your system to break if you have heavily changed something in the registry.

## License
This repository is licensed under the Unlicense license, you can create an issue or make a pull request to have some features changed. 