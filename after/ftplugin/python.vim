set tabstop=4
set shiftwidth=4
set expandtab

nnoremap <buffer> K :<C-u>let save_isk = &iskeyword \|
    \ set iskeyword+=. \|
    \ execute "!pydoc " . expand("<cword>") \|
    \ let &iskeyword = save_isk<CR>
