#!/bin/bash

cd $HOME
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm

cd $HOME/llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang

cd $HOME/llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt

mkdir -p $HOME/llvm/build
cd $HOME/llvm/build
mkdir -p $HOME/ycm_temp/
../configure --prefix=$HOME/ycm_temp/llvm_root_dir --enable-optimized
make
make install


if [ ! -e $HOME/.vim/bundle/YouCompleteMe ]; then
    sed -i "/a.vim/, +a Bundle 'Valloric/YouCompleteMe'" ~/.vim/plugins.vim

    cat ./config >> ~/.vim/plugins_config.vim
    cp ./ycm_extra_conf.py ~/.vim

    cd ~/.vim/bundle
    git clone --recursive https://github.com/Valloric/YouCompleteMe
fi

cd $HOME
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
