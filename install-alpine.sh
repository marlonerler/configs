#!/bin/sh

clear; echo "installing packages..."
apk add\
	bash\
	vim\
	git\
	curl\
	tmux\
	unzip\
	nodejs\
 	npm\
  	python3\
	py3-pip\
	ffmpeg\
	openssh\
	
# ssh
clear; echo "setting up ssh key..."
ssh-keygen
cat ~/.ssh/id_rsa.pub
