" -- Plugins {{{
" Automatisch vim-plug installieren, sofern es nicht installiert ist {{{
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}
" Plugins festlegen {{{
call plug#begin('$HOME/.config/nvim/neutest')
" ---- LSP {{{
Plug 'folke/lsp-colors.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'dguo/blood-moon', {'rtp': 'applications/vim'}
Plug 'folke/trouble.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'neovim/nvim-lspconfig'
"  }}}
"  Filetypes {{{
Plug 'chrisbra/csv.vim'
"  }}}

call plug#end()
" }}}
" Automatisch fehlende Plugins installieren beim Start {{{
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
" }}}
" Wissenswertes {{{
" -- installiere via CLI
"  # vim
" vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"
" neovim
" nvim -es -u init.vim -i NONE -c "PlugInstall" -c "qa"
" }}}
" }}}

" -- Basics {{{
" 256 Farben; MUSS VOR colorscheme stehen
set t_Co=256
set t_ut=
" Farben festlegen
colorscheme blood-moon
"  Dunkler Hintergrund
set background=dark
" indents minimal visualisieren
set list lcs=tab:\|\
" Ruler => zeige rechts unten `Zeile,Buchstabe`
set ruler
" Regex Magic
set magic
" Tab ist 2 Leerzeichen
set tabstop=2
" Tab beim Editieren _auch_ 4 Leerzeichen
set softtabstop=4
" Lade VIMRC nach speichern neu
" autocmd BufWritePost init.vim source $MYVIMRC
autocmd BufWritePost neu.vim source neu.vim
" letzte Zeile eines Paragraphen IMMER sichtbar
set display+=lastline
" immer X Zeilen über und unter dem Cursor anzeigen
set scrolloff=6
" Statusbar: immer anzeigen
set laststatus=2
" Tab Completion als Menü anzeigen
set wildmenu
" Dialog, falls geänderte Datei geschlossen wird
set confirm
"  }}}
" -- Filetypes {{{
" Bestimmte Dateien vom Öffnen ausschließen
set wildignore+=.pyc,.swp
" JOIN: ggf. Kommentarsymbole löschen
set formatoptions+=j
" MISC
set list
set listchars=trail:.,extends:→,precedes:←
" Indentation
set autoindent
set smartindent
filetype indent on
" -- nach Datei
autocmd FileType yaml setl indentkeys-=<:>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" --
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
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
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
" }}}
" -- NOCH TESTEN {{{
" Name des Fensters ist immer Name der aktuellen Datei
set title
" sofort ESC annehmen ohne Verzögerung
set timeoutlen=1000 ttimeoutlen=0
" Kommentare kursiv drucken
" funktioniert wohl nicht mit jedem colorscheme
highlight Comment cterm=italic gui=italic
"  }}}


" -- Plugin  Einstellungen {{{
" -- completion-nvim {{{
" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" }}}
" }}}

" -- Keybindings {{{
" mit Pfeiltesten zwischen Panes switchen
" }}}
" -- Folding {{{
set foldenable
set foldmethod=marker
" Beim Öffnen zugeklkappt
set foldlevel=20
set modelines=1
" speichern, welche Folds auf/zu sind
"autocmd BufWrite * mkview
"autocmd BufRead * silent loadview

" }}}
