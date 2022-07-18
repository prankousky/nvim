" anderes Colorscheme
" colorscheme onedark

" Keine Colorcolumn anzeigen
setlocal colorcolumn=

" Zellen automatisch aufpumpen
let g:csv_autocmd_arrange = 1
" funzt nicht
highlight link CSVColumnOdd MoreMsg
highlight link CSVColumnEven Question
" Test
" let g:csv_no_column_highlight = 0
let g:csv_highlight_column = 'y'
let g:csv_hiHeader = 'Pmenu'
let g:csv_hiGroup = "IncSearch"
" Linksbündig
let b:csv_arrange_align = 'l*'
