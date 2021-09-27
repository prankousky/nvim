" Keybindings
nnoremap <leader>ns :saveas <C-R>%
" nnoremap <leader>ns :saveas <C-R>%<ESC> | :e <C-R>%
nnoremap <leader>np :! ./generieren.sh %<CR>
nnoremap <leader>na :Cheatsheet<CR>nis
nnoremap 00 ggj0f,lct,
nnoremap 22 f,lct,
" nnoremap 22 llct,

" Abbreviations
abbrev wrsg2 Wöchentliche Reinigung Schienensystem GT2
abbrev weet Wöchentliches Eis Entfernen Tunnelraumverdampfer
abbrev weel Wöchentliches Eis Entfernen Leybold GT2
abbrev eaeb Wartung der Energieanlagen im Energiebereich gemäß Wartungspläne

function! Nisnext()
    let dateiname="@%"
    let dateiname+=1
    let neu=dateiname . '.csv'
    echo neu
    execute 'write' neu
    execute 'edit' neu
endfunction
