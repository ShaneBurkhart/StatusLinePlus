set laststatus=2

set statusline=%1*\ %t\ %*
set statusline=%2*\ %t\ %*

au InsertEnter * :set statusline=%!CreateStatusLine()
au InsertLeave * :set statusline=%!CreateStatusLine()

function s:CreateStatusLine()
    return 'asdf'
endfunction
