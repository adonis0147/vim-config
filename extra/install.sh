#!/bin/bash

sed -i "/a.vim/, +a Bundle 'Valloric/YouCompleteMe'" ~/.vim/plugins.vim

cat ./config >> ~/.vim/plugins_config.vim
cp ./ycm_extra_conf.py ~/.vim

cd ~/.vim/bundle
git clone --recursive https://github.com/Valloric/YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --system-libclang
