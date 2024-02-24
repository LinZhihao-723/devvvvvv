set backspace=indent,eol,start
set number
set relativenumber
set mouse=a
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a

set cc=100
highlight ColorColumn ctermbg=lightgrey

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let &t_SI = "\e[5 q"
let &t_EI = "\e[ q"

highlight Cursor guifg=red guibg=black