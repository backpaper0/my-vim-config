# Vimの設定

## 導入

このリポジトリを任意の場所へ`git clone`する。

`bin/install-plugins.sh`を実行してプラグインをインストールする。

`$HOME/.vimrc`から`main.vim`を読み込む。

```vim
" $HOME/.vimrc に書く
source /path/to/main.vim
```

### プラグインを更新する

`bin/update-plugins.sh`を実行する。

## 設定に関するメモ

### パッケージ管理

Vimが備えているパッケージ管理の仕組みを利用している。

- https://vim-jp.org/vimdoc-ja/repeat.html#packages

Vimのパッケージ管理は`.vimrc`を処理した後にパッケージを読み込むため、パッケージの`autoload`ディレクトリ内のスクリプトで定義された関数を呼び出すことができない。
そのため、それらの関数を用いた設定処理を[VimEnterイベント](https://vim-jp.org/vimdoc-ja/autocmd.html#VimEnter)で自動コマンドに登録している。

