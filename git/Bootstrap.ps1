$ScriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$GitConfigDirectory = $HOME

echo "copy .gitconfig file to $HOME"
New-Item -ItemType SymbolicLink -Target "$ScriptDirectory\.gitconfig" -Path "$HOME/.gitconfig"