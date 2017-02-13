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
let g:cIndexer_custom_ignore_extensions = ['sfx', 'gim', 'gis', 'ags', 'mesh', 'mtg', 'ter', 'cache', 'col']
let g:cIndexer_custom_ignore_directories = ['client/engine', 'server/script/com', 'server/mongodb', 'server/com']
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
let python_highlight_space_errors = 0
let python_highlight_all = 1

" ultisnips settings
let g:UltiSnipsExpandTrigger = '<c-j>'

" YouCompleteMe setting
nnoremap <leader>g :YcmCompleter GoTo<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_blacklist = {
    \ 'tagbar'   : 1,
    \ 'qf'       : 1,
    \ 'notes'    : 1,
    \ 'markdown' : 1,
    \ 'unite'    : 1,
    \ 'text'     : 1,
    \ 'vimwiki'  : 1,
    \ 'pandoc'   : 1,
    \ 'infolog'  : 1,
    \ 'mail'     : 1,
    \ 'searcher' : 1
    \}

" pyflakes-vim settings
let g:pyflakes_use_quickfix = 1
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
	  "echohl WarningMsg | echo l:msg | echohl None
	  echohl ErrorMsg | echo l:msg | echohl None
	endif
  endfunction
endfunction

