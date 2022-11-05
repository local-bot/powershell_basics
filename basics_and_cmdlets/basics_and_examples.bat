@echo off

:: Get- Member: Show what can be done with an object
Get-Service "vm*" | Get-Member
Get-Process | Get-Member
Get-Help Get-Process
Get-command get-*event* | get-member

:: man pages for windows
Get-Help Get-Process -Examples

:: show $PATH
echo %PATH%
$Env:Path

:: define variables
$test=$(Get-Service "vm*").Name
echo $test

:: -Name filter
get-alias -Name wget
get-alias -Name wge*

:: $_. and -macth examples
get-alias | Where-Object {$_.Name -match "wge"}
Get-Command | Where {$_.CommandType -eq 'Alias'}

:: create Files -> touch
New-Item -ItemType Directory "Schmutz"

:: start notepad
"Hello, World!" | Out-File C:\test.txt
Start-Process notepad test.txt

:: ls
Get-ChildItem -Path C:\Example -Filter "index.*"

:: Check if a File Exists
test-Path (C:\example.txt)

:: export to csv
Get-Process | Get-Member | Export-CSV test.csv 

:: show FreeVirtualMemory
Get-WmiObject -Class Win32_OperatingSystem –ComputerName localhost | Select-Object -Property CSName,FreeVirtualMemory 