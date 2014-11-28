" Automatically source the plugins_config.vim when it is saved
autocmd! bufwritepost plugins_config.vim source %

let mapleader=","


" Vim-powerline settings
let g:Powerline_cache_enabled = 0


" CtrlP settings
let g:ctrlp_map = '<leader>f'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 20
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
set wildignore+=*.class


" Ack.vim settings
nnoremap <leader>a :Ack -i <C-R><C-W>


" GoldenView.Vim settings
let g:goldenview__enable_default_mapping = 0
nmap <silent> <leader>s <Plug>GoldenViewSwitchMain
nmap <silent> <leader>S <Plug>GoldenViewSwitchToggle


" NERDTree settings
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.o$[[file]]', '.class$[[file]]', '.git$[[dir]]']


" Tagbar settings
nnoremap <F4> :TagbarToggle<cr>


" Auto-Pairs settings
autocmd FileType html,xml,php let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`', '<':'>'}
autocmd FileType tex let g:AutoPairs = {'(':')', '[':']', '{':'}', "`":"'"}


" UltiSnips settings
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/ultisnips/UltiSnips'


