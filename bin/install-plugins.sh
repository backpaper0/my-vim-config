#!/bin/bash

set -xue

PACK_PATH=$(cd $(dirname $0)/..; pwd)/pack/favorite

mkdir -p $PACK_PATH/{start,opt}

# 共通的なプラグイン
for i in \
    vim-jp/vimdoc-ja \
	prabirshrestha/vim-lsp \
	mattn/vim-lsp-settings \
	prabirshrestha/asyncomplete.vim \
	prabirshrestha/asyncomplete-lsp.vim \
	junegunn/fzf \
	junegunn/fzf.vim \
; do
    PLUGIN_PATH=$PACK_PATH/start/$(echo $i | awk -F '/' '{print $NF}')
    if [ ! -d $PLUGIN_PATH ]; then
        git clone http://github.com/$i.git $PLUGIN_PATH
    fi
done

# ファイルタイプ別のプラグイン
for i in \
    hail2u/vim-css3-syntax \
    othree/html5.vim \
; do
    # FIXME: ftplugin内のファイルでpackaddしても有効化されないため
    # optではなくstartに置くことにする。
    # (runtimepathには追加されるけれどプラグインは読み込まれてない)
    # 本来はoptに置いて必要に応じてプラグインを読み込みたい。
    PLUGIN_PATH=$PACK_PATH/start/$(echo $i | awk -F '/' '{print $NF}')
    if [ ! -d $PLUGIN_PATH ]; then
        git clone http://github.com/$i.git $PLUGIN_PATH
    fi
done

