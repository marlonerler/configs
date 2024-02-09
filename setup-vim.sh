#!/bin/sh

clear; echo "installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

clear; echo "please set up vim"
sleep 2
vim ~/.vimrc

