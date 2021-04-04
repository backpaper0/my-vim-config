let s:this_dir=expand('<sfile>:p:h')

execute "set packpath=" . s:this_dir

execute "source " . s:this_dir . "/config/base.vim"
execute "source " . s:this_dir . "/config/denite.nvim.vim"
execute "source " . s:this_dir . "/config/defx.nvim.vim"
execute "source " . s:this_dir . "/config/deoplete.nvim.vim"

