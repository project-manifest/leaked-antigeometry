@echo off
title InDustv3 - LL7
color 1f
echo Edit game saves at "https://v2.industue6.dev/u/localizedindust/editsaves/"

:console
set /p consoleline="Terminal> "
if "%consoleline%"=="importmod" goto import
if "%consoleline%"=="uninstall" echo Error
if "%consoleline%"=="exit" exit
if "%consoleline%"=="indust-debugv6" goto debugvi
if "%consoleline%"=="importbootloader" goto bootimport
if "%consoleline%"=="importdepot" goto depotimport
if "%consoleline%"=="importsettings" goto settingimport
goto console

:import
set /p importline="Import Url: "
echo importing %importline%.dll
:: import:diaf
timeout /t 3 /nobreak >nul
echo Finished Importing.
goto console

:debugvi
set /p debugline="DebugTerminal> "
if "%debugline%"=="unreal-engine" echo UnrealEngine Is no longer supported by AntiGeometry.
if "%debugline%"=="back" goto console
goto debugVI

:bootimport
set /p bootimport="Boot File (.boot): "
echo importing %bootimport%.boot
timeout /t 6 /nobreak >nul
echo imported.
goto console

:depotimport
set /p depot="Import Depot (.dll,.depot,.depend,.ini): "
echo importing %depot%.depot
timeout /t 3 /nobreak >nul
echo imported.
goto console

:settingimport
set /p setting="Import Setting: "
echo importing %setting%.set
timeout /t 4 /nobreak >nul
echo Done, Converting To .ini
timeout /t 4 /nobreak >nul
echo Done.
goto console