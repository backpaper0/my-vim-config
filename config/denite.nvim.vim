" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

nnoremap <silent> <Leader>s :<C-u>Denite<Space>source<CR>
nnoremap <silent> <Leader>g :<C-u>Denite<Space>gitfiles<CR>
nnoremap <silent> <Leader>f :<C-u>Denite<Space>file/rec<CR>
nnoremap <silent> <Leader>b :<C-u>Denite<Space>buffer<CR>
nnoremap <silent> <Leader>o :<C-u>Denite<Space>outline<CR>
