CURRENT_DIR=$(dirname "$(readlink -f "$0")")
ln -s $CURRENT_DIR/.gitconfig $HOME/.gitconfig