" Autocommands {{{
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
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd bufwritepost init.vim source $MYVIMRC
" tmp Datei autosave
" autocmd Vimenter /tmp/vimtemp.md :AutoSaveToggle
" Lade sxhkd neu, sobald Datei geschrieben wurde
" autocmd BufWritePost *sxhkdrc !sudo systemctl restart sxhkd.service
"
autocmd bufwritepost *.css :CocCommand prettier.formatFile
autocmd bufwritepost *.json :CocCommand prettier.formatFile

" HTML ersetze Umlaute durch entsprechenden Code
autocmd bufwritepost *.html :%s/Ü/\&Uuml;/g
autocmd bufwritepost *.html :%s/Ä/\&Auml;/g
autocmd bufwritepost *.html :%s/Ö/\&Ouml;/g
autocmd bufwritepost *.html :%s/ß/\&szlig;/g
autocmd bufwritepost *.html :%s/ä/\&auml;/g
autocmd bufwritepost *.html :%s/ö/\&ouml;/g
autocmd bufwritepost *.html :%s/ü/\&uuml;/g

" Platformio
" autocmd BufEnter platformio.ini :NERDTreeToggle :vs src/main.cpp<CR><ESC><C-w>h:vertical resize 35<CR><ESC><C-w>l

" }}}
