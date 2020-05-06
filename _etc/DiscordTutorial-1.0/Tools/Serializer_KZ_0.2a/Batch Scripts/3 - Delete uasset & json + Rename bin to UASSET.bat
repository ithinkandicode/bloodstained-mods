@pushd %1
@echo off

del /S /Q *.uasset > nul

del /S /Q *.json > nul

for /R %%G in (*.bin) do (
	rename "%%G" "%%~nG.uasset"
)
