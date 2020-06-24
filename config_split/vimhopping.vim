" osyo-manga/vim-hopping {{{
" Example key mapping
nmap <leader>r <Plug>(hopping-start)
" Keymapping
let g:hopping#keymapping = {
\	"\<C-n>" : "<Over>(hopping-next)",
\	"\<C-p>" : "<Over>(hopping-prev)",
\	"\<C-u>" : "<Over>(scroll-u)",
\	"\<C-d>" : "<Over>(scroll-d)",
\}
" }}}
