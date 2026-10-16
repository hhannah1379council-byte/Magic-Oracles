@echo off
title The All-Knowing Oracle
color 0B
setlocal enabledelayedexpansion

:: ===================== MAIN MENU =====================
:MENU
cls
echo.
echo ====================================================
echo            T H E   M A G I C   O R A C L E
echo       (Not literally everything, but close!)
echo ====================================================
echo.
echo What would you like to do?
echo.
echo   [1] Ask the Magic 8-Ball
echo   [2] Get a random fact
echo   [3] Generate a random number
echo   [4] Get date/time info
echo   [5] Quick system info
echo   [6] Get a wise saying
echo   [0] Exit
echo.
set /p choice=Pick an option: 

if "%choice%"=="1" goto EIGHTBALL
if "%choice%"=="2" goto FACT
if "%choice%"=="3" goto RANDNUM
if "%choice%"=="4" goto DATETIME
if "%choice%"=="5" goto SYSINFO
if "%choice%"=="6" goto SILLY
if "%choice%"=="0" goto END
goto MENU

:: ===================== MAGIC 8-BALL =====================
:EIGHTBALL
cls
echo.
echo Magic 8-Ball
echo.
set /p q=Ask your question: 
echo.
set /a r=%random%%%12
set ans[0]=It is certain!
set ans[1]=Without a doubt!
set ans[2]=Ask again later...
set ans[3]=Cannot predict now
set ans[4]=Don't count on it
set ans[5]=My sources say no
set ans[6]=Most likely
set ans[7]=Outlook good
set ans[8]=Reply hazy, try again
set ans[9]=Absolutely!
set ans[10]=Very doubtful
set ans[11]=Signs point to yes
echo The Oracle says: !ans[%r%]!
echo.
pause
goto MENU

:: ===================== RANDOM FACT =====================
:FACT
cls
echo.
echo Random Fact
echo.
set /a r=%random%%%10
set f[0]=Sharks existed before trees!
set f[1]=A day on Venus is longer than its year!
set f[2]=Octopuses have 3 hearts!
set f[3]=Honey never spoils!
set f[4]=You can't hum while holding your nose
set f[5]=Bananas are berries - strawberries are not!
set f[6]=Clouds weigh millions of tonnes
set f[7]=Wombat poo is cube-shaped!
set f[8]=Water makes different sounds depending on temperature
set f[9]=The Eiffel Tower shrinks in cold weather
echo !f[%r%]!
echo.
pause
goto MENU

:: ===================== RANDOM NUMBER =====================
:RANDNUM
cls
echo.
echo Random Number Generator
echo.
set /p min=Minimum number: 
set /p max=Maximum number: 
set /a range=max-min+1
set /a result=%random%%%%range%+min
echo.
echo Your number: %result%
echo.
pause
goto MENU

:: ===================== DATE/TIME =====================
:DATETIME
cls
echo.
echo Date and Time Info
echo.
echo Today is: %date%
echo Time is: %time%
echo.
pause
goto MENU

:: ===================== SYSTEM INFO =====================
:SYSINFO
cls
echo.
echo Quick System Info
echo.
echo Computer: %computername%
echo User: %username%
echo OS: Windows %os%
echo Temp folder: %temp%
echo.
pause
goto MENU

:: ===================== WISE SAYING =====================
:SILLY
cls
echo.
echo Words of Wisdom
echo.
set /a r=%random%%%8
set s[0]=Do your best and the rest will follow.
set s[1]=Why not? Life is short, eat the cookie!
set s[2]=Tomorrow is another day - get some sleep!
set s[3]=Believe in yourself - you can do this!
set s[4]=Everything will be okay, really.
set s[5]=Have you had a drink of water today?
set s[6]=You're doing better than you think you are.
set s[7]=Mistakes are just proof you're trying.
echo "%s[%r%]%"
echo.
pause
goto MENU

:: ===================== EXIT =====================
:END
cls
echo.
echo Farewell, traveller! Come back soon.
echo.
timeout /t 2 >nul
exit /b