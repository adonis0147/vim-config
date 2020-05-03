""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Plugins                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable plugins
try
    source ~/.vim/plugins.vim
    source ~/.vim/plugins_config.vim
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         General                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically source the .vimrc when it is saved
autocmd! bufwritepost .vimrc source %

" Automatically source the *.vim when it is saved
autocmd! bufwritepost *.vim source %

" Not compatible with vi
set nocompatible

" Automatically read a file when it is changed from the outside
set autoread

" No backup files
set nobackup
set nowritebackup
set noswapfile

" Use mouse in all mode
set mouse=a

" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp936
if has('win32')
	set langmenu=zh_CN.utf-8
	language messages zh_CN.utf-8
endif

" File formats
set fileformats=unix,mac,dos

" timeout
set timeoutlen=500

" Hide a buffer when it is abandoned
set hidden

" To toggle the paste mode
set pastetoggle=<F2>

" Set the clipboard
"set clipboard=unnamed

" History
set history=700

" Undo
set undolevels=700

" Don't redraw while executing macros
set lazyredraw

" Scroll
set scrolloff=7

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      User Interface                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Only toggle a menu when using complete
set completeopt=menu

" Show line number
set number

" Show the current postion
set ruler

" Show the status line
set laststatus=2

" Show matching brackets
set showmatch

" The time of blinking when matching brackets
set matchtime=0

" Enable syntax highlighting
syntax on

" Set colors
set t_Co=256

" colorscheme
try
    colorscheme molokai
catch
    colorscheme desert
endtry
highlight MatchParen ctermbg=None ctermfg=Red cterm=bold
highlight Conceal ctermbg=None

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               Text, Tab, Indent, Backspace               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Text width
set textwidth=120

" Color the column 120
set colorcolumn=120
highlight ColorColumn ctermbg=235
highlight link OverLength ColorColumn
exec 'match OverLength /\%'.&cc.'v.\+/'

" Don't automatically wrap on load
set nowrap

" Don't automatically wrap text when typing
set fo-=t

" Use tabs instead of spaces
set noexpandtab

" Be smart when using tabs
set smarttab

" Tab width
set tabstop=4
set softtabstop=4

" Shift
set shiftwidth=4
set shiftround

" Auto indent
set autoindent

" Smart indent
set smartindent

" Backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show indent line
set list
set listchars=tab:¦\ ,

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Search                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Using regular expressions easily
set magic

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Mappings                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map j gj
map k gk

" Disable highlight
noremap <silent> <leader><cr> :noh<cr>

" Quick quit command
nnoremap <leader>e :bdelete<cr>
nnoremap <leader>E :qa!<cr>

" Easier moving between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
tnoremap <c-j> <c-w>j
tnoremap <c-k> <c-w>k
tnoremap <c-l> <c-w>l
tnoremap <c-h> <c-w>h

" Easier moving between tabs
nnoremap <leader>n <esc>:bprevious<cr>
nnoremap <leader>m <esc>:bnext<cr>

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Copy content to clipboard
if has('unix')
    vnoremap <c-c> y:call CopyToClipboard()<cr>
end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Autocmd, Helper Functions                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent
autocmd FileType c,cpp set cindent
autocmd FileType c,cpp setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType html,xhtml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType php setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType python setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType sh setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType markdown setlocal expandtab

" Colorcolumn
autocmd FileType php setlocal textwidth=120 colorcolumn=120
autocmd FileType php exec 'match OverLength /\%'.&cc.'v.\+/'
autocmd FileType markdown highlight clear ColorColumn

" Build and run(just available for a single source code)
autocmd FileType c imap <F9> <esc>:w<cr>:!clear && gcc % -o %< && ./%<<cr>
autocmd FileType c nmap <F9> :w<cr>:!clear && gcc % -o %< && ./%<<cr>
autocmd FileType cpp imap <F9> <esc>:w<cr>:!clear && g++ --std=c++11 % -o %< && ./%<<cr>
autocmd FileType cpp nmap <F9> :w<cr>:!clear && g++ --std=c++11 % -o %< && ./%<<cr>
autocmd FileType python imap <F9> <esc>:w<cr>:!clear && python %<cr>
autocmd FileType python nmap <F9> :w<cr>:!clear && python %<cr>
autocmd FileType ruby imap <F9> <esc>:w<cr>:!clear && ruby %<cr>
autocmd FileType ruby nmap <F9> :w<cr>:!clear && ruby %<cr>
autocmd FileType sh imap <F9> <esc>:w<cr>:!clear && bash %<cr>
autocmd FileType sh nmap <F9> :w<cr>:!clear && bash %<cr>
autocmd FileType go imap <F9> <esc>:w<cr>:!clear && go run %<cr>
autocmd FileType go nmap <F9> :w<cr>:!clear && go run %<cr>

" Make
autocmd FileType c,cpp imap <F5> <esc>:w<cr>:copen<cr>:make<cr>
autocmd FileType c,cpp nmap <F5> :w<cr>:copen<cr>:make<cr>
"autocmd QuickFixCmdPost * :copen

" filetype settings
let g:tex_flavor = 'latex'
autocmd bufread,bufnewfile *.md :set filetype=markdown

" Delete trailing white space on save, useful for Python
function! DeleteTrailingWS()
    if index(['markdown'], &ft) == -1
        exe "normal mz"
        %s/\s\+$//ge
        exe "normal `z"
    end
endfunction
autocmd! bufwritepre * :call DeleteTrailingWS()

" Auto generate tags
function! CreateTags()
    :silent !ctags -R
    exec "redraw!"
endfunction
"autocmd! bufwritepost *.h,*.c,*.cpp call CreateTags()

" Copy content to clipboard
function! CopyToClipboard()
let s:python_util_eof = has('python3') ? 'python3 << EOF' : 'python << EOF'

if has('python3')
exec s:python_util_eof
import vim
import locale
encoding = locale.getdefaultlocale()[-1]
input = vim.eval('@0').encode(encoding)
EOF
else
exec s:python_util_eof
import vim
input = vim.eval('@0')
EOF
end

exec s:python_util_eof
import platform
from subprocess import Popen, PIPE

args = []
info = platform.platform()
if info.startswith('Darwin') or info.startswith('macOS'):
    args = ['pbcopy']
elif info.startswith('Linux'):
    args = ['xsel', '-bi']

try:
	p = Popen(args, stdin=PIPE)
	p.communicate(input=input)
	print('yanked')
except:
	vim.command('echohl Error')
	error = "The content isn't yanked, please install %s to your system." % args[0]
	vim.command('echoerr "%s"' % error)
	vim.command('echohl None')
EOF
endfunction

" Set encoding automatically
function! CheckFileEncoding()
  if exists('b:fenc_at_read') && &fileencoding != b:fenc_at_read
    exec 'e! ++enc=' . &fileencoding
    unlet b:fenc_at_read
  endif
endfunction
autocmd BufRead     * let b:fenc_at_read=&fileencoding
autocmd BufWinEnter * call CheckFileEncoding()

