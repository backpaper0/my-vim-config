packloadall!

" Use deoplete.
let g:deoplete#enable_at_startup = 1

autocmd VimEnter * call s:deoplete_custom()

function! s:deoplete_custom() abort
  call deoplete#custom#option('auto_complete', v:false)
endfunction

