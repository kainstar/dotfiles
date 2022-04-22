CURRENT_DIR=$(dirname "$(readlink -f "$0")")
ln -s $CURRENT_DIR/.tmux $HOME/.tmux
ln -s $CURRENT_DIR/.tmux.conf $HOME/.tmux.conf

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install plugins
$HOME/.tmux/plugins/tpm/bin/install_plugins