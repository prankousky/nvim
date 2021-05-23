" -- .vimrc/init.vim 
" -- 2021-05

" ---- Konfiguration aufteilen {{{
" ------- Plugins 
source plugged_plugins.vim
source airline.vim
source easyalign.vim
" ------- vim-spezifisch
" ---- }}}

" ---- Automatisch Config neu laden
let g:mapleader = ','
autocmd! bufwritepost init.vim source %
