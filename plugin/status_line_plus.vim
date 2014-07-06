set laststatus=2

set statusline=%!StatusLinePlus()

function! StatusLinePlus()
    let l:status = ''
    let l:status .= EditingModeStatusLine()
    let l:status .= ' %4*%f%*'
    let l:status .= ' %5*%m%* asdf'
    let l:status .= '%='
    let l:status .= '%4*%l%5*/%L%* '
    return l:status
endfunction

function! EditingModeStatusLine()
    let l:m=mode()
    if l:m == 'i'
        return '%1* Insert %*'
    elseif l:m == 'n'
        return '%2* Normal %*'
    else
        return '%3* Visual %*'
    endif
endfunction


"============== COLORS =================
hi StatusLine ctermfg=235 ctermbg=235
hi StatusLineNC ctermfg=235 ctermbg=235

"Insert mode
hi User1 ctermfg=15 ctermbg=28
"Normal mode
hi User2 ctermfg=15 ctermbg=27
"Visual mode
hi User3 ctermfg=15 ctermbg=129
"Filepath and current line number
hi User4 ctermfg=220 ctermbg=235
"Total lines in buffer
hi User5 ctermfg=202 ctermbg=235
