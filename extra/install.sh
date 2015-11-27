#!/bin/bash

sudo apt-get install cmake python-dev build-essential

sed -i "/YouCompleteMe/, +d" ~/.vim/plugins.vim
sed -i "/a.vim/, +a Bundle 'Valloric/YouCompleteMe'" ~/.vim/plugins.vim

sed -i "/YouCompleteMe/, +4d" ~/.vim/plugins_config.vim
cat ./config >> ~/.vim/plugins_config.vim

CPP_INCLUDE_PATH=/usr/include/c++
CPP_VERSION=`ls $CPP_INCLUDE_PATH | grep -P "^\d+.\d+$"`
INCLUDE="'-isystem',\n'$CPP_INCLUDE_PATH/$CPP_VERSION',"
sed "/usr\/local\/include/, +a $INCLUDE" ./ycm_extra_conf.py > ~/.vim/ycm_extra_conf.py

cd ~/.vim/bundle
git clone --recursive https://github.com/Valloric/YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --system-libclang
