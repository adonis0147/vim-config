" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Add plugins here.
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'adonis0147/prettyGuides'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-surround'
Bundle 'mattn/emmet-vim'
Bundle 'kevinw/pyflakes-vim'
Bundle 'FelikZ/ctrlp-py-matcher'
Bundle 'a.vim'

filetype plugin indent on
