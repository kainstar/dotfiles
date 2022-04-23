# install for powershell core (7+) x64 version

# from https://github.com/giggio/poshfiles/blob/main/InstallModules.ps1
# check module is not installed yet
function ModuleMissing($moduleName) {
  ($env:PSModulePath.Split([System.IO.Path]::PathSeparator) | `
      ForEach-Object { Join-Path $_ $moduleName } | `
      ForEach-Object { Test-Path $_ }).Where( { $_ } ).Count -eq 0
}

function CmdletMissing($cmdName) {
  return ![bool](Get-Command $cmdName -errorAction SilentlyContinue)
}


if (CmdletMissing oh-my-posh) {
  # install oh-my-posh
  # https://ohmyposh.dev/
  winget install JanDeDobbeleer.OhMyPosh
}

if (ModuleMissing PSReadLine) {
  # install PSReadLine
  # https://github.com/PowerShell/PSReadLine
  Install-Module PSReadLine
}

if (ModuleMissing Get-ChildItemColor) {
  # install Get-ChildItemColor
  # https://github.com/joonro/Get-ChildItemColor
  Install-Module -AllowClobber Get-ChildItemColor
}

if (ModuleMissing posh-git) {
  # install
  # https://github.com/dahlbyk/posh-git#installation
  PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
}