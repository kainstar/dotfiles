$env:POSH_GIT_ENABLED = $true

oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH\amro.omp.json | Invoke-Expression

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

Set-Alias g git

# enable volta command completion for powershell
# https://docs.volta.sh/reference/completions
$ScriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
. "$ScriptDirectory\Custom-Scripts\volta-completions-for-pwsh.ps1"