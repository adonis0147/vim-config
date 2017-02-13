" pyflakes settings
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

