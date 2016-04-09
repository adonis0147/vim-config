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
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'hdima/python-syntax', {'for': 'python'}
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim', {'for': ['html', 'xhtml', 'xml']}
Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips'
Plug 'Lokaltog/vim-easymotion'
Plug 'ap/vim-buftabline'
Plug 'a.vim'
Plug 'jeroenbourgois/vim-actionscript'

call plug#end()
filetype plugin indent on

