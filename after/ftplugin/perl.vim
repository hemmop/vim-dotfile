" Things that applies to perl code
"
" I like to use 2 chars indentation
setlocal shiftwidth=2
setlocal softtabstop=2

" No tabs in file
setlocal expandtab

" show white space in editor
setlocal list
" chars to show instead of white space
setlocal listchars=tab:>.,trail:.,extends:#,nbsp:.

" set up perl compiler
autocmd BufNewFile,BufRead *.{pl,pm,PL,t} compiler perl

" remove trailing white space function
function! RemoveTrailingWhitespace()
    let save_cursor = getpos(".")
    :%s/\s\+$//e
    call setpos('.', save_cursor)
:endfunction

" remove trailing white space on writes
autocmd BufWritePre *.{pl,pm,PL,t} :call RemoveTrailingWhitespace()
