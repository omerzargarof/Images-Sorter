@echo off

setlocal enabledelayedexpansion

echo Choose an option:
echo 1. Create yearly folders
echo 2. Move files
echo 3. Create monthly folders and move files

set /p choice="Enter your choice: "

if "%choice%"=="1" (
    set /p year="Enter the year: "
    mkdir "!year!"
    for %%m in (01 02 03 04 05 06 07 08 09 10 11 12) do (
        mkdir "!year!\%%m-!year!"
    )
    echo Created folder structure for year !year! with 12 subfolders.
) else if "%choice%"=="2" (
    set /p year="Enter the year: "
    for %%f in (*.*) do (
        set filename=%%~nf
        set month=!filename:~4,2!
        if "!filename:~0,4!"=="!year!" (
            move "%%f" "!year!\!month!-!year!"
        )
    )
) else if "%choice%"=="3" (
    set /p year="Enter the year: "
    mkdir "!year!"
    for %%m in (01 02 03 04 05 06 07 08 09 10 11 12) do (
        mkdir "!year!\%%m-!year!"
    )
    for %%f in (*.*) do (
        set filename=%%~nf
        set month=!filename:~4,2!
        if "!filename:~0,4!"=="!year!" (
            move "%%f" "!year!\!month!-!year!"
        )
    )
) else (
    echo Invalid choice. Exiting script.
)
echo Script completed! Goodbye.
