@if "%~1"=="" goto skip

@setlocal enableextensions
@pushd %~dp0
@echo "%~1\*.*" "..\..\..\*.*" >filelist.txt
.\UnrealPak.exe "%~1.pak" "D:\GameTools\Mods\Bloodstained\Tools2\UnrealPak\pakGo\cheats.pak" -create=filelist.txt -diff
@popd


:skip