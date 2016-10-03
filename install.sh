#!/bin/bash

#backup
rm -rf backup
mkdir backup
mv ~/.vim ./backup/vim
mv ~/.vimrc ./backup/vimrc

wget -P ~/.vim/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vimrc ~/.vimrc
cp plugins.vim ~/.vim/
cp plugins_config.vim ~/.vim/

vim -c ":PlugInstall" -c "qa"

