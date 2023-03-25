" welches Zeichen trennt
let g:csv__default_delim=','

" Keine Colorcolumn anzeigen
setlocal colorcolumn=

" Zellen automatisch aufpumpen
let g:csv_arrange_align = 1
" let g:csv_autocmd_arrange = 1
" funzt nicht
highlight link CSVColumnOdd MoreMsg
highlight link CSVColumnEven Question
" Test
let g:csv_no_column_highlight = 1
let g:csv_highlight_column = 0
let g:csv_hiHeader = 'Pmenu'
" let g:csv_hiGroup = "IncSearch"
" Linksbündig
let b:csv_arrange_align = 'l*'

aug CSV_Editing
		au!
		au BufRead,BufWritePost *.csv :%ArrangeColumn
		" au BufWritePre *.csv :%UnArrangeColumn
		au BufRead,BufWritePost *.csv :%CSVInit
aug end
