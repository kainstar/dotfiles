$env:POSH_GIT_ENABLED = $true

# set POSH_THEMES_PATH env variable to C:\Users\zhangshikai\AppData\Local\oh-my-posh\themes and download themes file to this directory manually
oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH\amro.omp.json | Invoke-Expression

# Git
Set-Alias g git
Import-Module posh-git

# 引入 ps-read-line
Import-Module PSReadLine
# 设置预测文本来源为历史记录
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# 设置 ls 类 linux 彩色输出
Import-Module Get-ChildItemColor
Set-Alias l Get-ChildItem -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

# enable volta command completion for powershell
# https://docs.volta.sh/reference/completions
$ScriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
. "$ScriptDirectory\Custom-Scripts\volta-completions-for-pwsh.ps1"

# proxy envs setting function
function Set-ProxyVariable {

  [CmdletBinding()]
  param (
    [ValidateNotNullOrEmpty()]
    [string]$proxyServer = "http://127.0.0.1:7890"
  )

  $env:http_proxy = $proxyServer
  $env:https_proxy = $proxyServer
}

function Unset-ProxyVariable {
  del env:http_proxy
  del env:https_proxy
}

function Echo-ProxyVariable {
  echo "http_proxy: $env:http_proxy"
  echo "https_proxy: $env:https_proxy"
}

# for git
$EDITOR="code --wait -n"