@echo off
chcp 65001

setlocal enabledelayedexpansion

echo ?תושעל הצרת המ !אבה ךורב
echo 1. היקית רוציל
echo 2. ןיימל
echo 3. םגו םג

set /p choice=" :רפסמ רחב"

if "%choice%"=="1" (
    set /p year=" ?הנש וזיא"
    mkdir "!year!"
    for %%m in (01 02 03 04 05 06 07 08 09 10 11 12) do (
        mkdir "!year!\%%m-!year!"
    )
    echo הנשה תייקית !year! םישדוחה יפל תויקית 21 םע הרצונ.
) else if "%choice%"=="2" (
    set /p year="?הנש וזיא "
    for %%f in (*.*) do (
        set filename=%%~nf
        set month=!filename:~4,2!
        if "!filename:~0,4!"=="!year!" (
            move "%%f" "!year!\!month!-!year!"
        )
    )
) else if "%choice%"=="3" (
    set /p year=" ?הנש וזיא"
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
    echo הפקת הניא הרחבנש היצפואה.
)
echo הסקריפט הושלם! ה