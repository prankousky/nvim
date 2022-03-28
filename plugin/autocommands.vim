" -- Python {{{
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" }}}
"-- Bash {{{
autocmd FileType bash,sh map <buffer> <F5> :w<CR>:exec '!bash' shellescape(@%, 1)<CR>
autocmd FileType bash,sh imap <buffer> <F5> <esc>:w<CR>:exec '!bash' shellescape(@%, 1)<CR>
" }}}
" -- Config Files {{{
" Polybar Config
autocmd BufRead,BufNewFile $HOME/.config/polybar/* set syntax=dosini
" Xresources
autocmd BufRead,BufNewFile $HOME/.config/Xresources.d/* set syntax=cfg
" i3wm
autocmd BufRead,BufNewFile $HOME/.config/i3/* set syntax=i3config
" polybar automatisch neu starten
" autocmd BufWritePost bentest  !$HOME/bin/bens/launch_polybar.sh
" alle anderen automatisch beim Speichern neu checken
autocmd BufRead,BufNewFile filetype detect
" VIMRC
" autocmd bufwritepost .vimrc source $MYVIMRC
autocmd bufwritepost init.vim source $MYVIMRC
" -- }}}
" Immer vim-rainbow nutzen
autocmd  VimEnter * :call rainbow_main#load()

" Platformio
" autocmd BufRead platformio.ini NERDTreeToggle | vs src/main.cpp | wincmd l | vertical resize 30 | wincmd h | wincmd h | vertical resize 30 | wincmd l | set filetype=cpp
autocmd BufRead *.cpp set filetype=cpp
" Benutze Cursorline NUR dann, wenn NICHT in INSERT MODE
" autocmd InsertLeave,WinEnter * set cursorline
" autocmd InsertEnter,WinLeave * set nocursorline
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 2000})
augroup END

augroup LEERZEILEN
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

" automatisch Screen resizen, damit sie immer gleich sind (?)
autocmd VimResized * wincmd =

" Merke Position im Dokument
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" nach Filetype {{{
" autocmd FileType yaml setl indentkeys-=<:>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
" CSS automatisch highlighten
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" YAML andere Fold Method
" autocmd FileType yaml set foldmethod=indent
" }}}"
"
" augroup filetype_yaml
"   autocmd!
"   autocmd BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
"   autocmd FileType yaml |
"       setlocal shiftwidth=2 |
"       setlocal softtabstop=2 |
"       setlocal tabstop=2
" augroup END
