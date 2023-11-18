#!/bin/sh

sudo apt install -y\
	vim\
	git\
	curl\
	tmux\
	unzip\
	openssh-server\

ssh-keygen
cat ~/.ssh/id-rsa.pub

git config --global user.name marlonerler
git config --global user.email viridian035@gmail.com

curl -fsSL https://bun.sh/install | bash
