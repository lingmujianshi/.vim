"シンタックスハイライト
syntax on
"改行した後の行のインデントの深さを、前の行と同じに
set noautoindent
"タブで挿入する文字をスペースに
set expandtab
"タブの幅を指定します。
set tabstop=4
"自動インデントの幅を指定します
set shiftwidth=4
"行番号を表示します。
set number
" ステータスライン数
set cmdheight=1
"ステータをスウィンドウ下側に常に表示
set laststatus=2
"ステータス表示形式
set statusline=%f%r%h%=
"行の先頭や終わりでの移動
set whichwrap=b,s,[,],<,>,~
"バックスペースで削除、改行、先頭移動
set backspace=start,eol,indent
"検索結果をハイライトする
set hlsearch
" Ctrl-L で検索ハイライトを消す
nmap <C-l> <C-l>:nohlsearch<CR>
" 現在のカーソルの色をつける
set cursorline
"highlight CursorLine cterm=None ctermfg=None ctermbg=None
"不可視文字を表示(スペース、タブなど)
set list
set listchars=eol:<,trail:-,nbsp:%,tab:>-
"Exコマンド候補を選べるように
set wildmenu
set wildmode=full
"履歴コマンドキーマップ
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
"検索で大文字小文字区別しない
set ignorecase
"しかし大文字で検索したときは区別する
set smartcase
"修正したファイルが保存しなくても他のバッファに移れる
set hidden
