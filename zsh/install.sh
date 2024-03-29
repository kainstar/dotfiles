# https://github.com/sorin-ionescu/prezto

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  cp "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done