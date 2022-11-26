let s:this_dir=expand('<sfile>:p:h')

execute "set runtimepath+=" . s:this_dir
execute "set packpath=" . s:this_dir

execute "source " . s:this_dir . "/config/base.vim"
execute "source " . s:this_dir . "/config/lsp.vim"
execute "source " . s:this_dir . "/config/asyncomplete.vim"
