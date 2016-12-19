autocmd BufRead,BufNewFile * call MapEnter()

" Maps enter key to add new line before current line and return to normal mode
function! MapEnter()
  " echom "Testing ".expand("%")
  if expand("%") != ""
    "echom "Re-Mapping <enter>"
    nnoremap <buffer> <enter> <S-o><esc>j
  endif
endfunction
