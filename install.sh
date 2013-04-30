#!/bin/sh

#backup
rm -rf backup
mkdir backup
mv ~/.vim ./backup/vim
mv ~/.vimrc ./backup/vimrc

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cp vimrc ~/.vimrc
cp plugins.vim ~/.vim/
cp plugins_config.vim ~/.vim

vim -c ":BundleInstall" -c "qa"

cd ~/.vim/bundle/a.vim/plugin
mv a.vim a.vim.bak
sed '/imap/, +d' a.vim.bak > a.vim

cd ~/.vim
sed -i '5aset rtp+=~/.vim/bundle/powerline/powerline/bindings/vim' plugins.vim

cd ~/.vim/bundle/powerline/font

mkdir -p ~/.fonts
cp PowerlineSymbols.otf ~/.fonts
fc-cache -vf ~/.fonts

mkdir -p ~/.config/fontconfig/conf.d
cp 10-powerline-symbols.conf ~/.config/fontconfig/conf.d
