" Functions {{{
"  markiere bestimmte Worte {{{
" Kommando zum Ausführen
" highlight HighWorte ctermbg=blue ctermfg=yellow
" " Function mit Wortliste
" function HighWorte()
"     match HighWorte /\c\<\(guicursor\|Beispielwort\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so\|easy\)\>/
" endfunction
" " zugehoeriges Keybinding
" nnoremap <leader>av :execute HighWorte()<CR>
" " und eins zum ent-Highlighten
" nnoremap <leader>ac :highlight HighWorte ctermbg=none ctermfg=none<CR>
" -- }}}
" }}}
