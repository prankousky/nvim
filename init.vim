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
" Plug 'AlphaMycelium/pathfinder.vim'
" Plug 'Shougo/deoplete.nvim'
" Plug 'Shougo/neosnippet.vim'
" Plug 'ajh17/VimCompletesMe'
" Plug 'andymass/vim-matchup'
" Plug 'aserebryakov/filestyle'
" Plug 'chrisbra/colorizer'
" Plug 'dhruvasagar/vim-zoom'
" Plug 'doums/coBra'
" Plug 'flazz/vim-colorschemes'
" Plug 'garbas/vim-snipmate'
" Plug 'hardcoreplayers/dashboard-nvim'
" Plug 'itchyny/vim-cursorword'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'lervag/vimtex'
" Plug 'liuchengxu/vim-which-key'
" Plug 'luisdavim/pretty-folds'
" Plug 'luochen1990/rainbow'
" Plug 'mtth/scratch.vim'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'rrethy/vim-hexokinase'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'w0rp/ale'
" Plug 'zenbro/mirror.vim'
" Plug 'zirrostig/vim-schlepp'
" Plug 'zxqfl/tabnine-vim' " Sowas wie COC
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'wellle/targets.vim'
Plug 'EVODelavega/vim-eazy-timer'
Plug 'Galicarnax/vim-regex-syntax'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'LandonSchropp/vim-stamp'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'MikeDacre/tmux-zsh-vim-titles'
Plug 'Rigellute/rigel'
Plug 'TaDaa/vimade'
Plug 'Yggdroot/LeaderF'
Plug 'Yggdroot/hiPairs'
Plug 'Yggdroot/indentLine'
Plug 'Yilin-Yang/vim-markbar'
Plug 'airblade/vim-gitgutter'
Plug 'aonemd/kuroi.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'arzg/vim-corvine'
Plug 'ayu-theme/ayu-vim'
Plug 'bling/vim-bufferline'
Plug 'brianrodri/vim-sort-folds'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'chase/vim-ansible-yaml'
Plug 'chengzeyi/fzf-preview.vim'
Plug 'chrisbra/csv.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'coddingtonbear/neomake-platformio'
Plug 'crusoexia/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'danilamihailov/beacon.nvim'
Plug 'davidhalter/jedi-vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'embear/vim-localvimrc'
Plug 'farmergreg/vim-lastplace'
Plug 'felixhummel/setcolors.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
Plug 'gcmt/wildfire.vim'
Plug 'gioele/vim-autoswap'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'google/vim-searchindex'
Plug 'honza/vim-snippets'
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'jcherven/jummidark.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'joshdick/onedark.vim'
Plug 'juleswang/css.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'kovetskiy/sxhkd-vim'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kshenoy/vim-signature'
Plug 'lfv89/vim-interestingwords'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " nur bei Bedarf laden
Plug 'machakann/vim-highlightedyank'
Plug 'markonm/traces.vim'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'mboughaba/i3config.vim'
Plug 'mechatroner/rainbow_csv'
Plug 'metakirby5/codi.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neomake/neomake'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ntpeters/vim-better-whitespace'
Plug 'numirias/semshi'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'osyo-manga/vim-hopping'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'raimon49/requirements.txt.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'rhysd/clever-f.vim'
Plug 'roxma/vim-paste-easy'
Plug 'rrethy/vim-illuminate'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'scuilion/markdown-drawer'
Plug 'sentientmachine/Pretty-Vim-Python'
Plug 'severij/vadelma'
Plug 'sickill/vim-pasta'
Plug 'sirver/ultisnips'
Plug 'srcery-colors/srcery-vim'
Plug 'stephpy/vim-yaml'
Plug 'thalesmello/tabfold'
Plug 'tomasr/molokai'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'urbainvaes/vim-remembrall'
Plug 'valloric/MatchTagAlways'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sleuth'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/Arduino-syntax-file'
Plug 'vim-scripts/vim-auto-save'
Plug 'vim-syntastic/syntastic'
Plug 'vimwiki/vimwiki'
Plug 'voldikss/vim-floaterm'
Plug 'whatyouhide/vim-gotham'
Plug 'wsdjeg/notifications.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'ymatz/vim-latex-completion'
call plug#end()
" }}}
" Theming {{{
" muss für srcery VOR colorscheme stehen {{{
" let g:srcery_italic = 1
" }}}
" 256 Farben festlegen; muss VOR colorscheme stehen
set t_Co=256
" colorscheme einstellen
set termguicolors
" set notermguicolors
set background=dark
colorscheme molokai
" colorscheme vadelma
" colorscheme rigel
" colorscheme gotham
" colorscheme ayu
" let ayucolor="dark"
" colorscheme corvine
" colorscheme gruvbox
" colorscheme jummidark
" colorscheme kuroi
" colorscheme xcodewwdc
" colorscheme monokai "
" colorscheme onedark
" colorscheme srcery
" colorscheme wal
"
" indents minimal visualisieren
" set list lcs=tab:\|\ 
"
" verschiedenes Themes per Filetype
" autocmd BufEnter * colorscheme molokai
" autocmd BufEnter *.py colorscheme xcodewwdc
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
set foldenable
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
source $HOME/.config/nvim/config_split/airline_lightline.vim
source $HOME/.config/nvim/config_split/coc.vim
source $HOME/.config/nvim/config_split/dadbod.vim
source $HOME/.config/nvim/config_split/dashboard-vim.vim
source $HOME/.config/nvim/config_split/fzf.vim
source $HOME/.config/nvim/config_split/firenvim.vim
source $HOME/.config/nvim/config_split/indentguides.vim
source $HOME/.config/nvim/config_split/limelight.vim
source $HOME/.config/nvim/config_split/misc.vim
source $HOME/.config/nvim/config_split/nerdtree.vim
source $HOME/.config/nvim/config_split/startify.vim
source $HOME/.config/nvim/config_split/ultisnips.vim
source $HOME/.config/nvim/config_split/vim-colors-xcode.vim
source $HOME/.config/nvim/config_split/vim-cpp-enhanced-highlight.vim
source $HOME/.config/nvim/config_split/vim-rainbow.vim
source $HOME/.config/nvim/config_split/vim-floatterm.vim
source $HOME/.config/nvim/config_split/vim-which-key.vim
source $HOME/.config/nvim/config_split/vimhopping.vim
source $HOME/.config/nvim/config_split/vimwiki.vim
lua require'colorizer'.setup()
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
