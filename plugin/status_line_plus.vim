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


