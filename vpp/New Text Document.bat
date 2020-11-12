@echo off
pushd %~dp0

dir b %SystemRoot%servicingPackagesMicrosoft-Windows-GroupPolicy-ClientExtensions-Package~3.mum List.txt
dir b %SystemRoot%servicingPackagesMicrosoft-Windows-GroupPolicy-ClientTools-Package~3.mum List.txt

for f %%i in ('findstr i . List.txt 2^nul') do dism online norestart add-package%SystemRoot%servicingPackages%%i
pause