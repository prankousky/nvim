"******************************************************************************"
"                                   LUA TEST                                   " {{{
"******************************************************************************"
lua << EOF
-- i = insert mode
-- SSS = Tastenkombination
-- dann der Befehl
-- dieses Beispiel funktioniert
--
--vim.api.nvim_set_keymap('i', 'SSS', '<ESC>:echo "Hallo"<CR>', {
--    noremap = true
--    }
--)
EOF
" }}}
" Leader festlegen
let mapleader =","
" Shellcheck
autocmd Filetype sh nnoremap <buffer> <F6> <ESC>:w<CR>:!clear;shellcheck %<CR>
autocmd Filetype sh inoremap <buffer> <F6> <ESC>:w<CR>:!clear;shellcheck %<CR>

" LEADER {{{
" -- NORMAL {{{
" 'Rasukarusan/nvim-select-multi-line'
" nnoremap <leader>, :call sml#mode_on()<CR>
" zeige Plugins im Firefox
" nnoremap <leader>gg yi' :!firefox --new-tab https://github.com/<C-R>"<CR><CR>
" nnoremap <leader>gf :!firefox --new-tab <C-R>*<CR><CR>
" AUTOMATISCH Systemclipboard benutzen
" nnoremap <leader>y "+y
" nnoremap <leader>p "+p
" Toggle EOL (etc) Symbole
" nnoremap <leader>i :set invlist!<CR>
" init.vim neu laden
" nnoremap <leader>S :source $MYVIMRC<CR>:echo "Neu geladen"<CR>
" edit vimrc
" nnoremap <leader>vv <c-u>:tabedit $MYVIMRC<CR>
" Lösche gesamten Inhalt des Buffers
nnoremap <leader>da ggdG
" AckWindow
" nnoremap <leader>t <c-u>:Rg<CR>
" für Kommentare `#` nutzen
nnoremap <leader>+ :setlocal commentstring=#\ %s<CR> :echo "Raute wird verwendet!"<CR>
" aktuelle Datei neu laden
nnoremap <leader>rr <c-u>:e!<CR>
" " JSON schöner formatieren
" nnoremap <leader>pp <c-u>:%!python -m json.tool<CR>
" Rechtsschreibung ein/aus (Deutsch)
" nnoremap <leader>o :setlocal spell! spelllang=de<CR>
" " Rechtsschreibung ein/aus (Englisch)
" nnoremap <leader>O :setlocal spell! spelllang=en_us<CR>
" Suchen und Ersetzen
" nnoremap <leader>s :%s///g<Left><Left><Left>
" gesamten Inhalt kopieren
" nnoremap <leader>* gg0VGy :echo 'Alles kopiert :)'<CR>
" ersetze Wort unter Cursor
" nnoremap <leader>7 :%s/\<<c-r><c-w>\>//g<left><left>
" als root Schreiben
" nnoremap<leader>su :w !sudo tee %<CR>
" Vifm
" nnoremap <leader>G :Goyo<CR><ESC>:set linebreak<CR>
" Limelight toggeln
" nnoremap <leader>l :Limelight!!<CR>
" AutoPairs Toggle
let g:AutoPairsShortcutToggle = '<leader>m'
" Terminal öffnen
" nnoremap <leader>t :vert term<CR>
" Startify IN vim noch mal öffnen
" nnoremap <leader>sf :Startify<CR>
" nnoremap <leader>bb :BufferPick<CR>
" in Markdown ersetzen nach folgendem Schema
" * `hier steht was` hier auch
" wird zu
" * [`hier steht was`](hier steht was) hier auch
" so werden in einer README.md alle gelisteten Files auch verlinkt
" nnoremap <leader>mdr <Esc>:%s/^\* `\([.a-zA-Z0-9]\+\)`/* [`\1`](\1)/<CR>
nnoremap <leader>hmdr <Esc>:%s/^\* `\([.a-zA-Z0-9_]\+\)`/* [`\1`](\1)/<CR>
" LaTeX / vimtex {{{
" vimtex erzeuge PDF
nnoremap <leader>hLpc <Esc>:VimtexCompile<CR>
" vimtex zeige PDF an
nnoremap <leader>hLpv <Esc>:VimtexView<CR>
" vimtex entferne überschüssige Dateien
nnoremap <leader>hLps <Esc>:VimtexClean<CR>
" -- }}}"
" schließe andere Buffer
" nnoremap <leader>x :execute "%bd\|e#"<CR>
" Working Dir zu aktuellem Pfad
" nnoremap <leader>. :lcd %:p:h<CR>
" -- }}}
"
" -- VISUAL {{{
" in visueller Selektion suchen/ersetzen
vnoremap <leader>V :s/\%V//g<left><left><left>
" vim-surround mit visueller Selektion
vnoremap <leader>" ysi\%V"
vnoremap <leader>' ysi\%V'
" Suchen und ersetzen
vnoremap <leader>s :s///g<Left><Left><Left>
" Visual Sort
vnoremap <leader>S :sort<CR>
" nach < > Fokus wieder erlangen
" mehr Geniales hier (https://vim.fandom.com/wiki/Shifting_blocks_visually)
vnoremap > >gv
vnoremap < <gv
" Zeilen hin- und her schieben
" in VISUAL Auswahl verschieben (hoch/runter)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" -- }}}
" }}}
"
" CTRL {{{
" Mit ctrl+h/j/k/l zwischen Panes bewegen
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" lösche in Black Hole
" nnoremap <leader>d "_d
" vnoremap <leader>d "_d
" Springe innerhalb Klammern
nnoremap <C-Up> {
nnoremap <C-Down> }
" speichern
map <C-s> <esc>:w<cr>
" speichern
imap <C-s> <esc>:w<cr>
" schließen
nmap <C-q> <esc>:q<cr>
" ctrl+c = ESC
inoremap <C-c> <esc>
" Rechtsschreibung mit `<Ctrl>+l` fixen
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>uO
" }}}
" SONSTIGES {{{
" Backspace = File Browser
" nnoremap <backspace> :NERDTreeToggle<CR>
" remap gf to create File if it does not already exist
" nnoremap gf :e <cfile><CR>
" Speichern mit <jk>
inoremap jk <Esc>:w<cr>
" <Esc> auf <jj> mappen
inoremap jj <Esc>
" mit i / I immer in die Mitte des Buffers springen
nnoremap i i<ESC>zzi
nnoremap I I<ESC>zzI
nnoremap a a<ESC>zza
nnoremap A A<ESC>zzA
" nach sichtbaren Linien bewegen (wenn eine 'echte' Zeile getrennt wird, und
" somit auf zwei Zeilen geteilt wird, bewegt man sich hierin so, wie man es
" erwartet)
nnoremap j gj
nnoremap k gk
" springe zu Anfang und Ende einer Zeile
nnoremap B ^
nnoremap E $
" mit `gv` den letzten eingefügten Text markieren
nnoremap gV `[v`]
" Y funktioniert wie C und D (bis zum ENDE der Zeile;
" andernfalls yy benutzen)
nnoremap Y y$
" mit <Enter> Search Highlight clearen
nnoremap <CR> :noh<CR><CR>
" }}}
" SPACE {{{
" zwischen Splits springen
" Split nach unten
nnoremap <space><down> <C-W><C-J>
" Split nach oben
nnoremap <space><up> <C-W><C-K>
" Split nach rechts
nnoremap <space><right> <C-W><C-L>
" Split nach links
nnoremap <space><left> <C-W><C-H>
" }}}
" MULTI / VERMISCHT {{{
" The direction of n and N depends on whether / or ? was used for searching forward or backward respectively. This is pretty confusing to me.
" If you want n to always search forward and N backward, use this:
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]
" Tippfehler vermeiden ;)
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" }}}
" DEAKTIVIERT {{{{{{
" sortiere Plugins in $MYVIMRC
" nmap <silent>ss :/plug#begin/+1,/plug#end/-1sort<CR>
" Suchhighlights wieder entfernen
" nmap <Leader><Space> :nohl<cr>
" geöffnete bash Datei ausführen
" Navigate between closed folds
" nnoremap <silent> <leader>zj :call NextClosedFold('j')<cr>
" nnoremap <silent> <leader>zk :call NextClosedFold('k')<cr>
" vim:foldmethod=marker:foldlevel=0
" }}}}}}
" besseres vorwärts/zurück springen
nnoremap n nzz
nnoremap N Nzz

" Tabs {{{
" Tabs mit `<ctrl><-/->` wechseln
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprevious<CR>
" Tabs mit `<ctrl><-/->` wechseln (Insert Mode)
inoremap <C-right> <Esc>:tabnext<CR>
inoremap <C-left> <Esc>:tabprevious<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tm :tabmove<Space>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 10gt "}}}
