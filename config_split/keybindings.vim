" Leader festlegen
let mapleader =","

" NIS Mapping {{{
nnoremap 22 llct,
nnoremap 00 0ct,
" }}}
"
" zeige / verstecke MarkBar
nmap <leader>M <Plug>ToggleMarkbar
nmap <leader>mA <Plug>OpenMarkbarPeekabooApostrophe

" Mit ctrl+j/k zwischen Panes bewegen
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" nach < > Fokus wieder erlangen
" mehr Geniales hier (https://vim.fandom.com/wiki/Shifting_blocks_visually)
vnoremap > >gv
vnoremap < <gv
" edit vimrc
nnoremap <leader>vv <c-u>:tabedit $MYVIMRC<CR>
" Lösche gesamten Inhalt des Buffers
nnoremap <leader>da ggdG
" AckWindow
nnoremap <leader>F <c-u>:Rg<CR>
" FzfGitignore
nnoremap <leader>gi <c-u>:FzfGitignore<CR>

" für Kommentare `#` nutzen
nnoremap <leader>+ :setlocal commentstring=#\ %s<CR> :echo "Raute wird verwendet!"<CR>

" nach Yank dorthin, wo vorher gewesen
nnoremap <leader>vy <c-u>y']<CR>
" fzf
nnoremap <leader>a <c-u>:FZF<CR>
" aktuelle Datei neu laden
nnoremap <leader>rr <c-u>:e!<CR>
" JSON schöner formatieren
nnoremap <leader>pp <c-u>:%!python -m json.tool<CR>
" Rechtsschreibung ein/aus (Deutsch)
map <leader>o :setlocal spell! spelllang=de<CR>
" Rechtsschreibung ein/aus (Englisch)
map <leader>O :setlocal spell! spelllang=en_us<CR>
" Suchen und Ersetzen
nnoremap <leader>S :%s///g<Left><Left><Left>
" Farbwerte anzeigen
map <leader>c :ColorToggle<CR>
" gesamten Inhalt kopieren
map <leader>* ggvG$y:echo "alles kopiert!"<CR>

" NerdTree und Nerdtree-Tabs
" NerdTree-Tabs
nnoremap <leader>N :NERDTreeTabsToggle<CR>

" ersetze Wort unter Cursor
nnoremap <leader>7 :%s/\<<c-r><c-w>\>//g<left><left>

" Zeilen hin- und her schieben
" wenn die Zeilen automatisch eingezogen werden sollen,
" hinter xnoreap (..) gv=gv eintragen, ansonsten nur gv 
xnoremap <A-K> :m-2<cr>gv
xnoremap <A-J> :m'>+<cr>gv
nnoremap <A-J> :m+<cr>==
nnoremap <A-K> :m-2<cr>==

" Zeile mit Dashes füllen 
" pipe wird mir <bar> ersetzt, danach wechselt man in den insert mode (i),
" dann geht man eine stelle nach rechts (right), dann wird eine neue zeile
" eingefügt (CR)
map <leader># 78A-<Esc>d78<bar>i<right><CR>

" markdown-drawer: öffnen und schließen
nnoremap <Leader>md :MarkDrawer<cr>
" geöffnete bash Datei ausführen
map <leader>bb :!bash %:p<CR>

" nach sichtbaren Linien bewegen (wenn eine 'echte' Zeile getrennt wird, und
" somit auf zwei Zeilen geteilt wird, bewegt man sich hierin so, wie man es 
" erwartet)
nnoremap j gj
nnoremap k gk

" springe zu Anfang und Ende einer Zeile
nnoremap B ^
nnoremap E $
" dafür die eigentlichen Tasten deaktivieren
" nnoremap $ <nop>
" nnoremap ^ <nop>

" mit `gv` den letzten eingefügten Text markieren
nnoremap gV `[v`]
" Y funktioniert wie C und D (bis zum ENDE der Zeile;
" andernfalls yy benutzen)
nnoremap Y y$

" .vimrc neu laden
map <leader>n :source ~/.vimrc<CR>
" als root Schreiben
nnoremap<leader>su :w !sudo tee %<CR>
" Limelight toggeln
nnoremap <leader>l :Limelight!!<CR> 
" mit F1 Helper anzeigen
" :map #3 :!bat ~/.vim/vimhelp<CR>
" mit F2 speichern
" nnoremap #2 :w<CR>
" Goyo Toggle
nnoremap <leader>G :Goyo<CR>
" AutoPairs Toggle
let g:AutoPairsShortcutToggle = '<leader>m'
" Terminal öffnen
nnoremap <leader>t :vert term<CR>
" Startify IN vim noch mal öffnen
nnoremap <leader>sf :Startify<CR>
" Suchhighlights wieder entfernen
" nmap <Leader><Space> :nohl<cr>
" in visueller Selektion suchen/ersetzen
vmap <leader>V :s/\%V//g<left><left><left>
" save / quit
" speichern
map <C-s> <esc>:w<cr>
" speichern
imap <C-s> <esc>:w<cr>
" schließen
nmap <C-q> <esc>:q<cr>
" Speichern mit <jk>
inoremap jk <Esc>:w<cr>

" csv als Tabelle darstellen
nnoremap <leader>cs :CSVTabularize<CR>
" <Esc> auf <jj> mappen
inoremap jj <Esc>
" mit <Enter> Search Highlight clearen
nnoremap <CR> :noh<CR><CR>
" Navigate between closed folds
nnoremap <silent> <leader>zj :call NextClosedFold('j')<cr>
nnoremap <silent> <leader>zk :call NextClosedFold('k')<cr>
" vim:foldmethod=marker:foldlevel=0

" in Markdown ersetzen nach folgendem Schema
" * `hier steht was` hier auch
" wird zu
" * [`hier steht was`](hier steht was) hier auch
" so werden in einer README.md alle gelisteten Files auch verlinkt
" nnoremap <leader>mdr <Esc>:%s/^\* `\([.a-zA-Z0-9]\+\)`/* [`\1`](\1)/<CR>
nnoremap <leader>mdr <Esc>:%s/^\* `\([.a-zA-Z0-9_]\+\)`/* [`\1`](\1)/<CR>

" LaTeX / vimtex
" vimtex erzeuge PDF
nnoremap <leader>lpc <Esc>:VimtexCompile<CR>
" vimtex zeige PDF an
nnoremap <leader>lpv <Esc>:VimtexView<CR>
" vimtex entferne überschüssige Dateien
nnoremap <leader>lps <Esc>:VimtexClean<CR>

" vim-notes
" neue Notiz
nnoremap <leader>n <Esc>:Note<CR>
" neue Notiz in Tab **namens todo**
nnoremap <leader>tn <Esc>:tabedit note:todo<CR>


" Tabs mit `<ctrl><-/->` wechseln
" switch tabs with Ctrl left and right
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprevious<CR>
" Tabs mit `<ctrl><-/->` wechseln (Insert Mode)
inoremap <C-right> <Esc>:tabnext<CR>
inoremap <C-left> <Esc>:tabprevious<CR>
" Rechtsschreibung mit `<Ctrl>+l` fixen
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>uO
" zwischen Splits springen
" Split nach unten
nnoremap <A-down> <C-W><C-J>
" Split nach oben
nnoremap <A-up> <C-W><C-K>
" Split nach rechts
nnoremap <A-right> <C-W><C-L>
" Split nach links
nnoremap <A-left> <C-W><C-H>
" Toggle filestyle (zeige/verstecke trailing spaces, tabs, etc.)
nnoremap <leader>9 <Esc>:FileStyleToggle<CR>
    " Python {{{
    autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    " }}}
    " Bash {{{
    autocmd FileType bash,sh map <buffer> <F5> :w<CR>:exec '!bash' shellescape(@%, 1)<CR>
    autocmd FileType bash,sh imap <buffer> <F5> <esc>:w<CR>:exec '!bash' shellescape(@%, 1)<CR>
    " }}}
" vim-rememberall {{{
" Show ',' normal mode mappings when ',' is pressed.
nnoremap <silent> <expr> , Remembrall(',')

" Show ',' normal mode mappings when the key combination ',?' is pressed,
" so we don't have to wait for the timeout.
nnoremap <silent> <expr> ,? Remembrall(',')

" Show visual mode mappings.
vnoremap <silent> <expr> ? Remembrall('v', '')
" }}}
" Platformio {{{
nnoremap <C-b> :make upload<CR>
" }}}
" CHADExplorer
nnoremap <leader>v <cmd>CHADopen<cr>
" remap gf to create File if it does not already exist
map gf :e <cfile><CR>
" sortiere Plugins in $MYVIMRC
nnoremap <silent>ss :/plug#begin/+1,/plug#end/-1!sort<CR>
