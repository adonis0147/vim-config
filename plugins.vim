" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

call plug#begin('~/.vim/bundle/')

" Add plugins here.
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'zhaocai/GoldenView.Vim'
Plug 'ap/vim-buftabline'
Plug 'kien/ctrlp.vim' | Plug 'adonis0147/ctrlp-cIndexer', {'do': './install.sh'}
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim', {'for': ['html', 'xhtml', 'xml']}
Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips'
Plug 'hdima/python-syntax', {'for': 'python'}
Plug 'adonis0147/a.vim', {'for': ['c', 'cpp', 'cc']}
Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe', {'do': 'python install.py --clang-completer'}
Plug 'adonis0147/pyflakes-vim', {'for': 'python'}

call plug#end()

