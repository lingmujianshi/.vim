" Note: Skip initialization for vim-tiny or vim-small.
" profile start profile.txt

if 1
  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/rc/vimrc'
endif