" Farben
" entweder
" hi link CSVColumnOdd MoreMsg
" hi link CSVColumnEven Question
" oder
hi CSVColumnEven term=bold ctermbg=2 guibg=DarkBlue
hi CSVColumnOdd  term=bold ctermbg=7 guibg=DarkMagenta
hi CSVColumnHeaderEven term=bold ctermbg=7 guibg=DarkBlue
hi CSVColumnHeaderOdd term=bold ctermbg=7 guibg=DarkMagenta
" Column automatisch highlighten
let g:csv_highlight_column = 'y'
