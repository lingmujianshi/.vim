"dein
if has('win32')
    set runtimepath+=~/_vimfiles/dein/repos/github.com/Shougo/dein.vim
else
    set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
endif

call dein#begin(expand(g:DIR . '/dein'))

" プラグインが実際にインストールされるディレクトリ
let g:bbb = '000'

let s:dein_dir = expand(g:DIR . '/dein')
let g:bbb = s:dein_dir

" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

let g:ccc = '000'
let g:ccc = s:dein_repo_dir

" dein.vim がなければ github から落としてくる
let g:ddd = '0' 
if &runtimepath !~# '/dein.vim'
  let g:ddd = '1'
  if !isdirectory(s:dein_repo_dir)
    let g:ddd = '2'
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  let g:ddd = '1'
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand(g:DIR . '/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/deinlazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
