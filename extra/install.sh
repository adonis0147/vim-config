#!/bin/bash

sed -i "/a.vim/, +a Bundle 'Valloric/YouCompleteMe'" ~/.vim/plugins.vim

cd ~/.vim/bundle
git clone --recursive https://github.com/Valloric/YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

cat ./config >> ~/.vim/plugins_config.vim
cp ./ycm_extra_conf.py ~/.vim
