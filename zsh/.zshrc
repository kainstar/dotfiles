eval "$(ssh-agent -s)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias vim="nvim"
alias g="git"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf env, completion and keybindings(disabled)
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'
export FZF_COMPLETION_TRIGGER='ll'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Porxy config helpers
function setProxy() {
  export https_proxy=http://127.0.0.1:7890
  export http_proxy=http://127.0.0.1:7890
  export all_proxy=socks5://127.0.0.1:7890
}

function unsetProxy() {
  unset https_proxy
  unset http_proxy
  unset all_proxy
}

function echoProxy() {
  echo "https_proxy=$https_proxy"
  echo "http_proxy=$http_proxy"
  echo "all_proxy=$all_proxy"
}

# Disable auto correct
unsetopt correct

# fnm (https://github.com/Schniz/fnm)
eval "$(fnm env --use-on-cd)"