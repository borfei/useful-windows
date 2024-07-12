# Useful Windows
> [!IMPORTANT]
> This repository is designed to work for Windows LTSC installations,
> as regular Windows installations probably have these by default.

[Download Useful Windows](https://github.com/borfei/useful-windows/archive/refs/heads/main.zip)

## Structure
Certain files have been organized into 4 categories:
- `UWPMediaCodecs`
    - Fixes missing codecs / Improves media playback in UWP applications
    - Recommended for users that prefer UWP media applications over third-parties
- `UWPWindowsEssentials`
    - Legacy Win32 applications might be replaced with their new UWP counterparts
    - Recommended if you work on a company or doing productivity
- `WinGetNative`
    - Installs WinGet without the requirement of Microsoft Store, saving space for your drive
    - Required if you tend to use the following:
        - `UWPMediaCodecs`
        - `UWPWindowsEssentials`
- `Tweaks`
    - Includes restoring the functionality of Windows Photo Viewer, disabling DOS filename creations, SSD optimizations, etc.
    - *Be careful of modifying the registry after applying some tweaks, most of them will likely cause your system to corrupt.*

## License
This repository is licensed under the Unlicense license, you can create an issue or make a pull request to have some features changed. 
