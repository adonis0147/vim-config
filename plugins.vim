" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

filetype off
let g:plug_threads=1
call plug#begin('~/.vim/plugged/')

" Add plugins here.
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'zhaocai/GoldenView.Vim'
Plug 'kien/ctrlp.vim' | Plug 'adonis0147/ctrlp-cIndexer', {'do': './install.sh'}
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'Raimondi/delimitMate'

call plug#end()
filetype plugin indent on

