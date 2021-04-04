#!/bin/bash

set -xue

PACK_PATH=$(cd $(dirname $0)/..; pwd)/pack/favorite

mkdir -p $PACK_PATH/{start,opt}

for i in \
    Shougo/defx.nvim \
    Shougo/denite.nvim \
    Shougo/deoplete.nvim \
    kannokanno/previm \
    mattn/vim-lsp-settings \
    neoclide/denite-git \
    prabirshrestha/async.vim \
    prabirshrestha/vim-lsp \
    roxma/nvim-yarp \
    roxma/vim-hug-neovim-rpc \
    tyru/open-browser.vim \
    vim-jp/vimdoc-ja \
; do
    PLUGIN_PATH=$PACK_PATH/start/$(echo $i | awk -F '/' '{print $NF}')
    if [ ! -d $PLUGIN_PATH ]; then
		git clone http://github.com/$i.git $PLUGIN_PATH
	fi
done

for i in \
    hail2u/vim-css3-syntax \
    leafgarland/typescript-vim \
    othree/html5.vim \
    rust-lang/rust.vim \
; do
    PLUGIN_PATH=$PACK_PATH/opt/$(echo $i | awk -F '/' '{print $NF}')
    if [ ! -d $PLUGIN_PATH ]; then
		git clone http://github.com/$i.git $PLUGIN_PATH
	fi
done
