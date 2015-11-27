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
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }


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

" Pyflakes-vim settings
let b:qf_list = []
let b:showing_message = 0
autocmd FileType python :call s:ActivateAutoCommand()

function! s:ActivateAutoCommand()
    set updatetime=1000
    autocmd InsertLeave <buffer> call s:ShowPyflakesMessage()
    autocmd InsertEnter <buffer> call s:ShowPyflakesMessage()

    autocmd CursorHold <buffer> call s:ShowPyflakesMessage()
    
    function! s:ShowPyflakesMessage()
        if b:showing_message == 1
            return
        endif

        let l:num_error = len(b:qf_list)
        let l:error = ' errors'
        if l:num_error > 0
            if l:num_error == 1
                let l:error = ' error'
            endif
            let l:msg = 'pyflakes detects ' . l:num_error . l:error . '!'
            echohl ErrorMsg | echo l:msg | echohl None
        endif
    endfunction
endfunction
