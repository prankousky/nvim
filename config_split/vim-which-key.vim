" nnoremap <silent> <leader>w :WhichKey ','<CR>
" minimal configuration Vorlage
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" extended configuration
let g:which_key_position="botleft"
let g:which_key_vertical=1
let g:which_key_hspace=25
