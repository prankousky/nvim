" Leader festlegen
let leader = ","
let mapleader = ","
" " Localleader festlegen
let localleader = "<space>"
" 256 Farben; muss VOR colorscheme stehen
set t_Co=256
set t_ut=
set termguicolors
" Cursor BLEIBT ein Block
" set guicursor=
" Cursorzeile markieren
set cursorline
" Merke Position im Dokument
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Vimwiki Path festlegen
let g:vimwiki_list = [{'path': '~/documents/vimwiki/wiki'}]
" Ruler => zeige rechts unten `Zeile,Buchstabe`
set ruler
" Regex Magic
set magic
" Relative Zeilennummern
set relativenumber
set number
" VIM muss nicht mit VI kompatibel sein
set nocompatible
" Sprache für Dictionaries festlegen
set spelllang=de,en_us
" Maus aktivieren
set mouse=a
" Syntax aktivieren
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
" # splits seitlicht
set splitright
" splits unterhalb
set splitbelow
" Suche NICHT case-sensitiv (für mich persönlich einfacher)
set ignorecase
" Suche fängt oben wieder an, wenn unten zuende
set wrapscan
" Zeilenumbruch verbieten
" set nowrap
" Highlighte Brackets
set showmatch
" virtuelles Editieren im Block Mode zulassen
set virtualedit=block
" Backspace über Intendations, Line Breaks, etc. erlauben
set backspace=indent,eol,start
" WÄHREND des Suchens markieren
set nohlsearch
set smartcase
" Search/Replace Vorschau
set inccommand=split
" Suche während Tippens durchführen
set incsearch
"
set hidden
" keine Töne
set noerrorbells
" Tab
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
" Indentation
set autoindent
set smartindent
set smarttab
filetype indent on
" Zeilenumbrüche
set wrap
" Backup / Swap / etc.
set noswapfile
set nobackup
set undodir=~/.config/nvim/undo
set undofile
" immer x Zeilen unter/überhalb anzeigen
set scrolloff=8
"
set signcolumn=yes
"
set isfname+=@-@
" set ls=0
" Give more space for displaying messages.
set cmdheight=1
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" unten rechts gedrückte Befehle anzeigen
set showcmd
" Ausserhalb VIM Buffer kopieren
set clipboard=unnamedplus
" Anzeigen, wo 80 Chars enden
set colorcolumn=80
"
set display+=lastline
" Statusbar: immer anzeigen
set laststatus=2
" Tab Completion als Menü anzeigen
set wildmenu
" Dialog, falls geänderte Datei geschlossen wird
set confirm
" schöneres Menu bei "find *.py"
set wildmode=longest:list,full
" set wildmode=longest,list,full
set wildmenu
"
" set list
set listchars=trail:.,extends:→,precedes:←
" Datei(typen) ignorieren
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
" JOIN: ggf. Kommentarsymbole löschen
set formatoptions+=j
"
let loaded_matchparen = 1
set path +=**
set foldenable
set foldmethod=marker
" Beim Öffnen zugeklkappt
set foldlevel=20
set modelines=1
" -- gruvbox-community settings {{{
let g:gruvbox_contrast_dark = 'hard'
" Markierung bei 80
let g:gruvbox_color_column = 'green'
" Italics aktivieren
let g:gruvbox_italicize_strings = 1
" Ausprobieren
let g:gruvbox_improved_strings = 0
let g:gruvbox_improved_warnings = 1
" " -- }}}
" :h und :help in neuem Tab öffnen
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
