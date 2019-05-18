let mapleader=" "

try
	" lightline settings
	source ~/.vim/settings/lightline_settings.vim
	" coc settings
	source ~/.vim/settings/coc_settings.vim
catch
endtry

" vim-snippets settings
let g:is_bash = 1

" GoldenView settings
let g:goldenview__enable_default_mapping = 0
nmap <silent> <leader>w <Plug>GoldenViewSwitchMain

" delimitMate settings
autocmd FileType python let b:delimitMate_nesting_quotes = ['"']
imap <c-d> <Plug>delimitMateS-Tab

" nerdtree settings
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.o$[[file]]', '.class$[[file]]', '.git$[[dir]]']

" tagbar settings
nnoremap <F4> :TagbarToggle<cr>
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}

" vim-sneak settings
let g:sneak#label = 1

" vim-easy-align settings
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" python-syntax settings
let python_highlight_space_errors = 0
let python_highlight_all = 1

" vim-gutentags settings
let g:gutentags_cache_dir = "~/.cache/ctags"

" vim-quickhl settings
nmap <leader>h <Plug>(quickhl-manual-this-whole-word)
xmap <leader>h <Plug>(quickhl-manual-this-whole-word)
nmap <leader>u <Plug>(quickhl-manual-reset)
xmap <leader>u <Plug>(quickhl-manual-reset)
let g:quickhl_manual_colors = [
	\ 'ctermbg=cyan    ctermfg=black guibg=#8CCBEA guifg=black',
	\ 'ctermbg=green   ctermfg=black guibg=#A4E57E guifg=black',
	\ 'ctermbg=yellow  ctermfg=black guibg=#FFDB72 guifg=black',
	\ 'ctermbg=red     ctermfg=black guibg=#FF7272 guifg=black',
	\ 'ctermbg=magenta ctermfg=black guibg=#FFB3FF guifg=black',
	\ 'ctermbg=blue    ctermfg=black guibg=#9999FF guifg=black',
	\ ]
