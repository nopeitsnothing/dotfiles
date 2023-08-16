#!/bin/sh

mkdir -p ~/.config/
mkdir -p ~/.vim/autoload/
mkdir -p ~/.bash_completion.d/
mkdir -p ~/.gnupg/
mkdir -p ~/.ssh/
mkdir -p ~/.local/share/nvim/

./bin/open_the_vault.sh
gpg --batch --use-agent --decrypt ssh.conf.gpg > ~/.ssh/config
gpg --batch --use-agent --decrypt hosts.gpg > ~/hosts
gpg --batch --use-agent --decrypt gpg.conf.gpg > ~/.gnupg/gpg.conf

cp .gitconfig ~
cp .vimrc ~
cp -r .vim/* ~/.vim
cp python-argcomplete ~/.bash_completion.d
cp .bashrc ~
cp names.txt ~
