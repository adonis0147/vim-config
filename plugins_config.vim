" Automatically source the plugins_config.vim when it is saved
autocmd! bufwritepost plugins_config.vim source %

let mapleader=","

" lightline settings
try
	source ~/.vim/settings/lightline_settings.vim
catch
endtry

" GoldenView settings
let g:goldenview__enable_default_mapping = 0
nmap <silent> <leader>s <Plug>GoldenViewSwitchMain
nmap <silent> <leader>S <Plug>GoldenViewSwitchToggle

" ctrlp settings
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:cIndexer_custom_ignore_extensions = ['sfx', 'gim', 'gis', 'ags', 'mesh', 'mtg', 'nfx', 'ps', 'vs', 'ter', 'cache']
nnoremap <leader>b :CtrlPBuffer<cr>

" delimitMate settings
autocmd FileType python let b:delimitMate_nesting_quotes = ['"']
imap <c-d> <Plug>delimitMateS-Tab

" nerdtree settings
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.o$[[file]]', '.class$[[file]]', '.git$[[dir]]']

" tagbar settings
nnoremap <F4> :TagbarToggle<cr>

" vim-easy-align settings
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" python-syntax settings
let python_highlight_all = 1

" ultisnips settings
let g:UltiSnipsExpandTrigger = '<c-j>'

