"
" {{{ vim-ctrlspace
let g:CtrlSpaceDefaultMappingKey = "<C-space> "
" }}}
" "}
" {{{ vim-ansible-yaml
" leere Zeilen ignorieren (besser für Einzug)
let g:ansible_options = {'ignore_blank_lines': 0}
" }}}
" vim-latex-live-preview {{{ 
let g:livepreview_previewer = 'zathura'
" }}}
" w0rp/ale  {{{
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_completion_enabled = 1
" }}} hi
" rainbow_csv {{{
" Farben gestlegen
" let g:rcsv_colorpairs = [['red', 'red'], ['blue', 'blue'], ['green', 'green'], ['magenta', 'magenta'], ['NONE', 'NONE'], ['darkred', 'darkred'], ['darkblue', 'darkblue'], ['darkgreen', 'darkgreen'], ['darkmagenta', 'darkmagenta'], ['darkcyan', 'darkcyan']]
" }}}
" vim-autosafe {{{
" automatisch starten
" let g:auto_save = 1  " enable AutoSave on Vim startup
" }}}
" notes-vim {{{

" Ordner festlegen
:let g:notes_directories = ['~/.vip/notes']
" }}}
" vim-json {{{
" immer Anführungszeichen zeigen bzw. conceal AUS
let g:vim_json_syntax_conceal = 0
" Errors anzeigen
let g:vim_json_warnings = 1
" }}}
" vim-matchit {{{
" zeige offene und geschlossene Klammern etc.
" let g:loaded_matchit = 1
" }}}
" vim-easy-align {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)
" }}}
" vim-which-key {{{
" keybinding
" nnoremap <leader>wk :WhichKey '<leader>'<CR>
" wie lange anzeigen
set timeoutlen=25000
" }}}
" vim-easymotion {{{
" map <Leader>E <Plug>(easymotion-prefix)
" -- }}}
"  vimtex {{{
" let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
" set conceallevel=1
" let g:tex_conceal='abdmg'
" -- }}}
" tpope/vim-commentary {{{
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType sh setlocal commentstring=#\ %s
" }}}
" Yggdroot/hiPairs {{{ 
    let g:hiPairs_hl_unmatchPair = { 'term'    : 'underline,italic',
                \                    'cterm'   : 'italic',
                \                    'ctermfg' : '15',
                \                    'ctermbg' : '12',
                \                    'gui'     : 'italic',
                \                    'guifg'   : 'White',
                \                    'guibg'   : 'Red' }
" }}}
" vim-schlepp {{{
vmap h <plug>schleppleft
vmap j <Plug>SchleppDown
vmap k <Plug>SchleppUp
vmap l <Plug>SchleppRightup> 
"}}}
" vim-bookmarks {{{
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 2
" }}}
" vim-sort-folds {{{
vmap <leader>f :call sortfolds#SortFolds()<CR>
"  }}}
"  vim-illuminate {{{
let g:Illuminate_ftblacklist = ['nerdtree']
"  }}}
