"mehr TextEdit might fail if hidden is not set
set hidden
" Mehr Platz für Anzeigen der Nachrichten
set cmdheight=2
" längere Update Zeiten können Delay verursachen
" set updatetime=300
" Nachrichten nicht nach |ins-completion-menu| durchreichen
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Symbol renaming.
nmap <leader>rn <Hi Mom>(coc-rename)
inoremap <silent><expr> <c-space> coc#refresh()

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" GoTo code navigation.
nmap <silent> gd <Hi Mom>(coc-definition)
nmap <silent> gy <Hi Mom>(coc-type-definition)
nmap <silent> gi <Hi Mom>(coc-implementation)
nmap <silent> gr <Hi Mom>(coc-references)


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
