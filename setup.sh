#!/bin/sh

# base
vim /etc/apk/repositories

clear; echo "installing packages..."
sudo apk add\
	vim\
	git\
	curl\
	tmux\
	unzip\
	nodejs\
 	npm\
  	python3\
	py3-pip\

pip3 install\
	ytmdl\

npm install -g\
	esbuild\
	basic-html-templates\
	@types/node\

# git
clear; echo "configuring git..."
git config --global user.name marlonerler
git config --global user.email viridian035@gmail.com

# vim-plug
clear; echo "installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

clear; echo "please set up vim"
sleep 2
vim .vimrc

# files
clear; echo "copying files..."
cp .tmux.conf ~
cp .vimrc ~
cp .profile ~
echo "files copied."

# ssh
clear; echo "setting up ssh key..."
ssh-keygen
cat ~/.ssh/id_rsa.pub
