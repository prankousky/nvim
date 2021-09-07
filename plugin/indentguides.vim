" beim Start aktivieren
let g:indent_guides_enable_on_vim_startup = 1

" " Farben aktivieren
let g:indent_guides_start_leveL = 1
let g:indent_guides_guide_size = 1
" wenn auf 0 deaktiviert, wenn auf 1 gelten untere Werte
let g:indent_guides_auto_colors = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=magenta ctermbg=cyan
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=cyan ctermbg=magenta
" Visuelles
let g:indentLine_char = '| '
let g:indentLine_setConceal = 0

" nicht in dashboard-vim anzeigen
let g:indentLine_fileTypeExclude = ['dashboard']
let g:indentLine_fileTypeExclude = ['startify']
