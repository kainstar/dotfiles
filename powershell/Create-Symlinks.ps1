$ScriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$PowershellProfileDirectory = Split-Path -Path $PROFILE -Parent

New-Item -ItemType SymbolicLink -Target "$ScriptDirectory\Microsoft.PowerShell_profile.ps1" -Path $PROFILE
New-Item -ItemType SymbolicLink -Target "$ScriptDirectory\Custom-Scripts" -Path "$PowershellProfileDirectory/Custom-Scripts"