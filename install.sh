#!/bin/bash

#backup
rm -rf backup
mkdir backup
mv ~/.vim ./backup/vim
mv ~/.vimrc ./backup/vimrc

sudo apt-get install xsel exuberant-ctags ack-grep

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cp vimrc ~/.vimrc
cp plugins.vim ~/.vim/
cp plugins_config.vim ~/.vim
cp -rf indent ~/.vim

vim -c ":BundleInstall" -c "qa"

cd ~/.vim/bundle/a.vim/plugin
mv a.vim a.vim.bak
sed '/imap/d' a.vim.bak > a.vim
