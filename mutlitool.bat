REM filepath: /c:/Users/moric/Documents/My Projekts (Code)/idk/Multitool/multitool.bat
@echo off
title PC Multitool
mode con: cols=100 lines=40
chcp 437 >nul

:menu
cls
color 0B
echo.
echo  __    __     __  __     __         ______   __     ______   ______     ______     __        
echo /\ "-./  \   /\ \/\ \   /\ \       /\__  _\ /\ \   /\__  _\ /\  __ \   /\  __ \   /\ \       
echo \ \ \-./\ \  \ \ \_\ \  \ \ \____  \/_/\ \/ \ \ \  \/_/\ \/ \ \ \/\ \  \ \ \/\ \  \ \ \____  
echo  \ \_\ \ \_\  \ \_____\  \ \_____\    \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \ \_____\ 
echo   \/_/  \/_/   \/_____/   \/_____/     \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ 
echo.
echo                                     MAIN MENU                                     
echo   [1] System Information                                                          
echo   [2] Network Tools                                                               
echo   [3] Disk Management                                                             
echo   [4] System Maintenance                                                          
echo   [5] Exit                                                                        
echo.
set /p choice="Enter your choice [1-5]: "

if "%choice%"=="1" goto sysinfo
if "%choice%"=="2" goto network
if "%choice%"=="3" goto disk
if "%choice%"=="4" goto maintenance
if "%choice%"=="5" exit

:sysinfo
cls
color 0A
echo.
echo                                SYSTEM INFORMATION                                    
echo.
systeminfo | more
pause
goto menu

:network
cls
color 0C
echo                                  NETWORK TOOLS                                      
echo.
echo  [1] IP Configuration
echo  [2] Ping Test
echo  [3] Network Statistics
echo  [4] Back to Main Menu
echo.
set /p nchoice="Enter your choice [1-4]: "
if "%nchoice%"=="1" ipconfig /all & pause & goto network
if "%nchoice%"=="2" (
    set /p target="Enter address to ping: "
    ping %target%
    pause
    goto network
)
if "%nchoice%"=="3" netstat -an & pause & goto network
if "%nchoice%"=="4" goto menu
goto network

:disk
cls
color 0E
echo                                DISK MANAGEMENT                                      
echo.
echo  [1] Disk Space
echo  [2] Check Disk
echo  [3] Back to Main Menu
echo.
set /p dchoice="Enter your choice [1-3]: "
if "%dchoice%"=="1" wmic logicaldisk get size,freespace,caption & pause & goto disk
if "%dchoice%"=="2" chkdsk & pause & goto disk
if "%dchoice%"=="3" goto menu
goto disk

:maintenance
cls
color 0D
echo                               SYSTEM MAINTENANCE                                    
echo.
echo  [1] Clean Temp Files
echo  [2] System File Check
echo  [3] Back to Main Menu
echo.
set /p mchoice="Enter your choice [1-3]: "
if "%mchoice%"=="1" (
    del /s /f /q %temp%\*.*
    echo Temp files cleaned.
    pause
    goto maintenance
)
if "%mchoice%"=="2" sfc /scannow & pause & goto maintenance
if "%mchoice%"=="3" goto menu
goto maintenance