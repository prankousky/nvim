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
