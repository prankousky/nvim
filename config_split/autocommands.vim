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

" tmp Datei autosave
" autocmd Vimenter /tmp/vimtemp.md :AutoSaveToggle
" Lade sxhkd neu, sobald Datei geschrieben wurde
" autocmd BufWritePost *sxhkdrc !sudo systemctl restart sxhkd.service
"
autocmd bufwritepost *.css :CocCommand prettier.formatFile
autocmd bufwritepost *.json :CocCommand prettier.formatFile

" Immer vim-rainbow nutzen
" autocmd  VimEnter * :call rainbow#load()

" Platformio
" autocmd BufRead platformio.ini NERDTreeToggle | vs src/main.cpp | wincmd l | vertical resize 30 | wincmd h | wincmd h | vertical resize 30 | wincmd l | set filetype=cpp
autocmd BufRead *.cpp set filetype=cpp

" Benutze Cursorline NUR dann, wenn NICHT in INSERT MODE
" autocmd InsertLeave,WinEnter * set cursorline
" autocmd InsertEnter,WinLeave * set nocursorline

" Markdown Table
" autocmd BufEnter *.md TableModeEnable
