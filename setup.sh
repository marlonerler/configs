#!/bin/sh

# base
sudo apk add\
	vim\
	git\
	curl\
	tmux\
	unzip\


# git
git config --global user.name marlonerler
git config --global user.email viridian035@gmail.com

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ssh
ssh-keygen
cat ~/.ssh/id_rsa.pub
