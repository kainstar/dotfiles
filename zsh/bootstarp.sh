CURRENT_DIR=$(dirname "$(readlink -f "$0")")
ln -s $CURRENT_DIR/.zshrc $HOME/.zshrc
ln -s $CURRENT_DIR/oh-my-zsh-custom ${ZSH_CUSTOM:="$HOME/.oh-my-zsh/custom"}