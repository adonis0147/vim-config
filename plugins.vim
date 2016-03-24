" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

filetype off
let g:plug_threads=1
call plug#begin('~/.vim/bundle/')

" Add plugins here.
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'zhaocai/GoldenView.Vim'
Plug 'kien/ctrlp.vim' | Plug 'adonis0147/ctrlp-cIndexer', {'do': './install.sh'}
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'kevinw/pyflakes-vim', {'for': 'python'}
Plug 'hdima/python-syntax', {'for': 'python'}
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'junegunn/vim-easy-align'

call plug#end()
filetype plugin indent on

