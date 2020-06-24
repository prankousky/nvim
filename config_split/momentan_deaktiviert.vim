" Abbreviations {{{
" Datum und Zeit einfügen
" abbrev datumzeit <C-r>=strftime("%Y-%m-%d %T")<CR>
" CSS Kommentare automatisch schließen
" abbrev /* <C-r>\/\*<CR><CR>\/\*k
" }}}
"" neosnippet {{{
"" Plugin key-mappings.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_exasdpsdand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

"" SuperTab like snippets behavior.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
""imap <expr><TAB>
"" \ pumvisible() ? "\<C-n>" :
"" \ neosnippet#expandable_or_jumpable() ?
"" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"" For conceal markers.
"if has('conceal')
"  set conceallevel=2 concealcursor=niv
"endif

"" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1

"" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
"" }}}
"  kien/rainbow_parenthesis.vim {{{
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]

" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0

" immer an
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" }}}
