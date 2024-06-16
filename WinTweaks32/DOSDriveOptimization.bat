@echo off
fsutil behavior set disableLastAccess 1
fsutil behavior set disable8dot3 1
fsutil 8dot3name strip C:
echo Legacy MS-DOS filename creation are now disabled. Optimization finished.