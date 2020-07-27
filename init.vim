" - Benjamin Singelmann 2020-06
" Sources: {{{
" --> https://vimrcfu.com
" --> https://vimawesome.com
" --> https://vim.fandom.com
" --> https://vi.stackexchange.com
" --> https://vim.works
" --> https://vimcolors.com
" --> http://colorswat.ch/vim (ColorThemes)
" --> https://vimgifs.com
" }}}
" Plugins hier laden {{{ 
call plug#begin('$HOME/.config/nvim/plugged')
" Plug 'AlphaMycelium/pathfinder.vim'			" zeige schnellste Movements
" Plug 'Shougo/deoplete.nvim'				" TODO: erkunden
" Plug 'Shougo/neosnippet.vim'				" internal: snippets
" Plug 'ajh17/VimCompletesMe'				" Autocompletion
" Plug 'andymass/vim-matchup'				" internal: vim-matchit replacement, more features
" Plug 'aserebryakov/filestyle' 	            " visual: trailing spaces, tabs, ...  
" Plug 'dhruvasagar/vim-zoom'				" einzelne Panes zoomen
" Plug 'doums/coBra'					" {[()]}
" Plug 'flazz/vim-colorschemes'				" visual: colorschemes
" Plug 'garbas/vim-snipmate'				" Snippets
" Plug 'itchyny/vim-cursorword'				" visual: underline word underneath cursor
Plug 'embear/vim-localvimrc'
Plug 'coddingtonbear/neomake-platformio'
Plug 'valloric/MatchTagAlways'              " HTML Tags immer farbig markieren
Plug 'vim-scripts/Arduino-syntax-file'
Plug 'lfv89/vim-interestingwords'           " <leader>k zum markieren, n und N zum hin und her springen
Plug 'kien/rainbow_parentheses.vim'			" auch farbige Klammern
" Plug 'liuchengxu/vim-which-key'				" Keybindings anzeigen
" Plug 'luisdavim/pretty-folds'				" internal: better folds
Plug 'luochen1990/rainbow'				" farbige {([])}
" Plug 'mattn/emmet-vim'					" ?
" Plug 'mattn/emmet-vim'					" Abkürzungen (html, css, etc.) unterstützen
" Plug 'mtth/scratch.vim'					" mit `gs` Scratchpad öffnen; noch recherchieren
" Plug 'nathanaelkane/vim-indent-guides'			" visual: indents anzeigen
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " internal: auto style 
" Plug 'rrethy/vim-hexokinase'				" auch Farbwerte (noch vergleichen)
" Plug 'scuilion/markdown-drawer'				" Tab mit Markdown (schneller zu Bereichen springen)
" Plug 'terryma/vim-multiple-cursors'			" mehrere Cursors (noch lernen)
" Plug 'w0rp/ale'						" ALE
" Plug 'zenbro/mirror.vim'                    " intern: edit scp files etc.
Plug 'ConradIrwin/vim-bracketed-paste'			" internal: vernünftiges Paste, ohne dass Zeilen verschoben werden
Plug 'EVODelavega/vim-eazy-timer'			" internal: timer
Plug 'Galicarnax/vim-regex-syntax'			" syntax: regex
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " nur bei Bedarf laden
Plug 'Glench/Vim-Jinja2-Syntax'				" syntax: jinja2
Plug 'LandonSchropp/vim-stamp'				" misc: mit bsp. `Siw` kopierten Text über aktuelles Wort schreiben
Plug 'MattesGroeger/vim-bookmarks'			" visual: markierungen besser anzeigen
Plug 'unblevable/quick-scope'               " better f/F t/T movements
Plug 'MikeDacre/tmux-zsh-vim-titles'			" internal: tmux-zsh-vim-titles
Plug 'Rigellute/rigel'					" visual: CS rigel
Plug 'TaDaa/vimade'					" visual: dimme inaktive Panes
Plug 'Yggdroot/LeaderF'					" internal: fzf Popup
Plug 'Yggdroot/hiPairs'					" visual: parentheses
Plug 'Yggdroot/indentLine'                  " visual: indents
Plug 'Yilin-Yang/vim-markbar'				" visual: marks übersichtlich darstellen
Plug 'airblade/vim-gitgutter'				" internal: git Support
Plug 'aonemd/kuroi.vim'					" visual: CS kuroi
Plug 'arzg/vim-corvine'					" visual: CS corvine
Plug 'ayu-theme/ayu-vim'				" visual: ayu-vim
Plug 'brianrodri/vim-sort-folds'			" internal: sort folds
Plug 'chase/vim-ansible-yaml'				" visual: yaml indents
Plug 'chengzeyi/fzf-preview.vim'			" visual: Dateiinhalt preview
Plug 'chrisbra/colorizer'				" visual: mit ,c Farbwerte einblenden
Plug 'chrisbra/csv.vim'					" internal: support für csv Dateien
Plug 'christoomey/vim-tmux-navigator'			" internal: tmux/vim zusammenspiel
Plug 'crusoexia/vim-monokai'				" visual: CS monokai
Plug 'ctrlpvim/ctrlp.vim'				" internal: fuzzy finder
Plug 'danilamihailov/beacon.nvim'           " visual: highlight cursor after move
Plug 'dhruvasagar/vim-table-mode'			" visual: markdown tables
Plug 'easymotion/vim-easymotion'			" internal: <leader>w easy motion
Plug 'ekalinin/Dockerfile.vim'				" syntax: docker file
Plug 'elzr/vim-json'					" syntax: json
Plug 'farmergreg/vim-lastplace'				" internal: remember position when exiting
Plug 'felixhummel/setcolors.vim'			" visual: colorschemes
Plug 'gioele/vim-autoswap'				" internal: manage swap
Plug 'google/vim-searchindex' 	            " visual: zeige, wie oft aktuelle Suche in Datei vorkommt
Plug 'honza/vim-snippets'				" misc: needed for 'sirver/ultisnips'
Plug 'https://github.com/adelarsq/vim-matchit'		" visual: matche verschiedene Symbole
Plug 'https://github.com/morhetz/gruvbox'		" visual: CS gruvbox
Plug 'itchyny/lightline.vim'				" visual: status line
Plug 'jcherven/jummidark.vim'				" visual: CS jummidark
Plug 'jiangmiao/auto-pairs'				" visual: auch matchen? (noch vergleichen)
Plug 'jistr/vim-nerdtree-tabs'				" misc: tabview in `nerdtree`
Plug 'joshdick/onedark.vim'				" visual: CS onedark
Plug 'juleswang/css.vim'				" internal: css
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'				" visual: mit ,G 'Schreibmodus'
Plug 'junegunn/limelight.vim'				" visual: highlighting einzelner Bereiche (:Limelight)
Plug 'junegunn/vim-easy-align'				" internal: ausrichten (noch lernen)
Plug 'junegunn/vim-peekaboo'				" visual: display registers
Plug 'kovetskiy/sxhkd-vim'				" syntax: sxhkd
Plug 'kristijanhusak/vim-dadbod-ui'         " internal: databases (for vim-dadbod) toggle ':DBUI'
Plug 'kshenoy/vim-signature'            " visual: better marks
Plug 'lervag/vimtex'					" misc: latex inkl. Preview in Zuthura
Plug 'vim-syntastic/syntastic'
Plug 'machakann/vim-highlightedyank'			" visual: highlight yanked selection
Plug 'markonm/traces.vim'				" internal: search and substitue preview
Plug 'mbbill/undotree'					" internal: undo tree
Plug 'mboughaba/i3config.vim'				" syntax: i3wm
Plug 'mechatroner/rainbow_csv'				" visual: colorful csv (noch recherchieren)
Plug 'metakirby5/codi.vim'				" internal: interaktive python shell
Plug 'mhinz/vim-signify'				" misc: needed for vim-gitgutter
Plug 'mhinz/vim-startify'				" internal: startpage
Plug 'mileszs/ack.vim'					" internal: durchsuche Dateiinhalte (?)
Plug 'neoclide/coc.nvim', {'branch': 'release'}		" internal: completion
Plug 'numirias/semshi' 	                    " syntax: python
Plug 'osyo-manga/vim-hopping'				" internal: preview search & replace
Plug 'raimon49/requirements.txt.vim'        " syntax: python requirements.txt
Plug 'rhysd/clever-f.vim'                   " intern: erweitere f/F, t/T Funktion
Plug 'roxma/vim-paste-easy'				" internal: besseres paste
Plug 'rrethy/vim-illuminate'                " visual: highlight word underneath cursor
Plug 'davidhalter/jedi-vim'             " internal: python completion
Plug 'arzg/vim-colors-xcode'            " visual: xcode color schemes
Plug 'ryanoasis/vim-devicons'				" visual: icons
Plug 'scrooloose/nerdtree'				" visual:
Plug 'sentientmachine/Pretty-Vim-Python'    " syntax: python
Plug 'sickill/vim-pasta'				" internal: besseres Paste
Plug 'sirver/ultisnips'					" misc: Snippets NOCH LERNEN
Plug 'srcery-colors/srcery-vim'				" visual: srcery-vim theme
Plug 'stephpy/vim-yaml'					" internal: yaml support
Plug 'thalesmello/tabfold'				" visual: toggle folds with <Tab>
Plug 'ntpeters/vim-better-whitespace'  " visual: show whitespaces
Plug 'tomasr/molokai'					" visual: CS molokai
Plug 'tpope/vim-characterize'				" internal: mit 'ga' normalen Text zu decimal, octal, hex
Plug 'tpope/vim-commentary'				" internal: toggle commands (mit 'gcc')
Plug 'tpope/vim-dadbod'                     " internal: databases
Plug 'tpope/vim-eunuch'					" sehr viel mit Dateien anstellen (:SudoWrite, :Rename, Chmod +x, etc.)
Plug 'tpope/vim-speeddating'				" internal: <C-a> und <C-x> Zahlen (und Datum etc. erhöhen / verringern)
Plug 'tpope/vim-surround'				" internal: umrandungen (quotes, single quotes, Klammer, etc.) automatisch ersetzen
Plug 'urbainvaes/vim-remembrall' 	        " intern: zeige keymappings
Plug 'vim-airline/vim-airline'			" visual: statusline für vim - bestes, schön übersichtlich :)
Plug 'vim-airline/vim-airline-themes'			" visual: additional airline themes
Plug 'vim-ctrlspace/vim-ctrlspace'          " intern: ctrl space menu
Plug 'vim-pandoc/vim-pandoc'				" internal: pandoc support
Plug 'vim-pandoc/vim-pandoc-syntax'			" syntax: pandoc
Plug 'vim-scripts/vim-auto-save'			" internal: auto save
Plug 'whatyouhide/vim-gotham'				" visual: CS gotham
Plug 'voldikss/vim-floaterm'
Plug 'wsdjeg/notifications.vim'				" visual: floating notifications
Plug 'xolox/vim-misc'					" misc: needed for vim-notes
Plug 'xolox/vim-notes'					" internal: mit `:notes` Notizen schreiben
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }	" internal: LaTeX preview
Plug 'ymatz/vim-latex-completion'			" internal: LaTeX completion
Plug 'zirrostig/vim-schlepp'				" internal: in visual mode mit Pfeiltasten Text bewegen
call plug#end()
" }}}
" Theming {{{
" muss für srcery VOR colorscheme stehen {{{
" let g:srcery_italic = 1
" }}}
" 256 Farben festlegen; muss VOR colorscheme stehen
set t_Co=256
" colorscheme einstellen
" set termguicolors
set notermguicolors
" set background=dark
" colorscheme molokai
" colorscheme rigel
" colorscheme gotham
" colorscheme ayu
" let ayucolor="dark"
" colorscheme corvine
" colorscheme gruvbox
" colorscheme jummidark
" colorscheme kuroi
" colorscheme xcodewwdc
" colorscheme monokai "  bestes, schön übersichtlich :)
" colorscheme onedark
" colorscheme srcery
" colorscheme wal
"
" indents minimal visualisieren
" set list lcs=tab:\|\ 
"
" verschiedenes Themes per Filetype
autocmd BufEnter * colorscheme molokai
autocmd BufEnter *.py colorscheme xcodewwdc
" autocmd BufEnter *.yaml colorscheme srcery
" autocmd BufEnter *.yml colorscheme srcery
" für csv
" autocmd BufNewFile,BufRead *.csv set filetype=csv_semicolon
"
" KEINE Transparenz für vim
" highlight Normal ctermbg=Black
" highlight NonText ctermbg=Black
" das gilt auch für kitty terminal
" let &t_ut=''
" Ruler ==> zeigt rechts unten `Zeile,Buchstabe` an
set ruler
" Cursorline ==> highlightet die aktuelle Zeile
" set cursorline
" Cursorline ==> deaktiveren
set cursorline&
" hi CursorLine ctermfg=162
" magic ==> bei regex muss man so nicht sämtliche Sonderzeichen escapen 
set magic
" Balken bei 80 Zeichen (Wert auf 80 stellen, is klar)
" set textwidth=0
" set colorcolumn=+1
" Farbe des Balkens
" hi ColorColumn guibg=#406ef7 ctermbg=3
" Tab ist 8 Leerzeichen
set tabstop=4
" Tab beim Editieren auch 4 Leerzeichen
set softtabstop=4
" für vim-autoswap
set title titlestring=
" für vim-autoswap
let g:autoswap_detect_tmux = 1
"
" Folding aktivieren
set foldenable	" wird mit za getoggelt
" fold auch nach Einzug erkennen
set foldmethod=marker
" beim Öffnen zugeklappt
set foldlevel=20
set modelines=1
" speichern, welche Folds auf/zu sind
" autocmd BufWrite * mkview
" autocmd BufRead * silent loadview
"
" letzte Zeile eines Paragraphen immer sichtbar
set display+=lastline
" immer X Zeilen über und unter dem Cursor anzeigen
set scrolloff=12
" immer X Zeichen neben dem Cursor anzeigen (aktuell deaktiviert)
" set sidescrollof=5
"
" immer Statusbar anzeigen
set laststatus=2
" Tab Completion Optionen als Menü anzeigen
set wildmenu
" Name des Fensters ist immer Name der aktuellen Datei
set title
" Dialog anzeigen, wenn geänderte Datei ohne zu speichern geschlossen wird
set confirm
" bestimmte Dateien vom Öffnen ausschließen (in diesem Fall .pyc und .swp)
set wildignore+=.pyc,.swp
" beim Joinen von Zeilen ggf. Kommentarsymbole löschen
set formatoptions+=j
" }}}
" diverse Einstellungen {{{ 
" yggdroot / indent
let g:indentLine_color_term = 239
" yggdroot / indent
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"
set ts=4 sw=4 et
set autoindent
set smartindent
" auf Dateiart basierender Einzug
filetype indent on
autocmd FileType yaml setl indentkeys-=<:>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" Autocompletion bei :-Kommandos
set wildmode=longest,list,full
" automatische Kommentare in neuer Zeile deaktivieren
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0
" unten rechts gedrückte Befehle anzeigen
set showcmd
" Ausserhalb VIM Buffer kopieren
set clipboard=unnamedplus
" Suche
" Suche highlighten
set hlsearch
" automatisch case-sensitiv UMSCHALTEN, sobald ein Großbuchstabe in der Suche steht
set smartcase
" Suche während Tippens durchführen
set incsearch
" Suche NICHT case-sensitiv (für mich persönlich einfacher)
set ignorecase
" nur redrawen, wenn es Sinn macht (besser für Ressourcen)
set lazyredraw
" Suche fängt oben wieder an, wenn unten zuende
set wrapscan
" Zeilenumbruch verbieten
set nowrap
" Highlighte Brackets
set showmatch
" virtuelles Editieren im Block Mode zulassen
set virtualedit=block
" Backspace über Intendations, Line Breaks, etc. erlauben
set backspace=indent,eol,start
" CSS automatisch highlighten
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" YAML andere Fold Method
" autocmd FileType yaml set foldmethod=indent
" # splits seitlicht 
set splitright
" splits unterhalb
set splitbelow
" automatisch Screen resizen, damit sie immer gleich sind (?)
autocmd VimResized * wincmd =
" VIM muss nicht mit VI kompatibel sein
set nocompatible
" für ctrlspace
set hidden
" Sprache
set spelllang=de,en_us
" Maus aktivieren
set mouse=a
" erkenne Filetype
filetype plugin on
" Syntax highlighten
syntax on
syntax enable
" Encoding Format
set encoding=utf-8
" wie werden Zeilennumer dargestellt (number / relativenuber)
" für vim-searchindex
set shortmess-=S
set number relativenumber
" außerhalb von VIM veränderte Datei automatisch neu laden
set autoread
" }}}
" SPLIT CONFIG {{{
source $HOME/.config/nvim/config_split/autocommands.vim
source $HOME/.config/nvim/config_split/backups.vim
source $HOME/.config/nvim/config_split/functions.vim
source $HOME/.config/nvim/config_split/keybindings.vim
source $HOME/.config/nvim/config_split/macros.vim
source $HOME/.config/nvim/config_split/templates.vim
source $HOME/.config/nvim/config_split/tmuxcursor.vim
" Plugins
" source $HOME/.config/nvim/config_split/multiplecursors.vim
source $HOME/.config/nvim/config_split/coc.vim
source $HOME/.config/nvim/config_split/dadbod.vim
source $HOME/.config/nvim/config_split/fzf.vim
source $HOME/.config/nvim/config_split/indentguides.vim
source $HOME/.config/nvim/config_split/limelight.vim
source $HOME/.config/nvim/config_split/misc.vim
source $HOME/.config/nvim/config_split/startify.vim
source $HOME/.config/nvim/config_split/ultisnips.vim
source $HOME/.config/nvim/config_split/vim-colors-xcode.vim
source $HOME/.config/nvim/config_split/vim-floatterm.vim
source $HOME/.config/nvim/config_split/vim-which-key.vim
source $HOME/.config/nvim/config_split/vimhopping.vim
source $HOME/.config/nvim/config_split/airline_lightline.vim
" NUR für OSX aktivieren
" source $HOME/.config/nvim/config_split/osx_only.vim
" }}}
" Testkram {{{
autocmd FileType vim let b:vcm_tab_complete = 'vim'
" Show arrow if line continues rightwards
set listchars=extends:→
" Show arrow if line continues leftwards
set listchars+=precedes:←
" sofort ESC annehmen ohne Verzögerung
set timeoutlen=1000 ttimeoutlen=0 
" Kommentare kursiv drucken
" funktioniert wohl nicht mit jedem colorscheme
" highlight Comment cterm=italic gui=italic
" }}}
