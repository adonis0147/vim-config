call plug#begin('~/.vim/bundle/')

" Add plugins here.
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/vim-easy-align'
Plug 'hdima/python-syntax', {'for': 'python'}
Plug 'adonis0147/a.vim', {'for': ['c', 'cpp', 'cc']}
Plug 'ludovicchabant/vim-gutentags'
Plug 't9md/vim-quickhl'

if !&diff
	Plug 'zhaocai/GoldenView.Vim'
endif

call plug#end()
