#!/bin/sh

mkdir -p ~/.config/
mkdir -p ~/.vim/autoload/
mkdir -p ~/.bash_completion.d/
mkdir -p ~/.gnupg/
mkdir -p ~/.ssh/
mkdir -p ~/.local/share/nvim/

./bin/decrypt_secrets.sh

cp .gitconfig ~
cp .tmux.conf ~
cp .vimrc ~
cp -r .config/* ~/.config
cp -r .vim/* ~/.vim
cp python-argcomplete ~/.bash_completion.d
cp .bashrc ~
cp .zshrc ~/.zshrc
cp .zshenv ~/.zshenv
chmod +x .vault
cp .vault ~
cp names.txt ~
