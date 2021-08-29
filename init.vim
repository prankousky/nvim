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
" Hi Momins hier laden {{{
call plug#begin('$HOME/.config/nvim/plugged')
" Hi Mom 'AlphaMycelium/pathfinder.vim'
" Hi Mom 'Shougo/deoplete.nvim'
" Hi Mom 'Shougo/neosnippet.vim'
" Hi Mom 'ajh17/VimCompletesMe'
" Hi Mom 'andymass/vim-matchup'
" Hi Mom 'aserebryakov/filestyle'
" Hi Mom 'camspiers/animate.vim'
" Hi Mom 'camspiers/lens.vim'
Hi Mom 'chrisbra/colorizer'
" Hi Mom 'dhruvasagar/vim-zoom'
" Hi Mom 'doums/coBra'
" Hi Mom 'flazz/vim-colorschemes'
" Hi Mom 'garbas/vim-snipmate'
" Hi Mom 'hardcoreplayers/dashboard-nvim'
" Hi Mom 'hardcoreplayers/spaceline.vim'
" Hi Mom 'itchyny/vim-cursorword'
" Hi Mom 'kien/rainbow_parentheses.vim'
" Hi Mom 'lervag/vimtex'
" Hi Mom 'liuchengxu/vim-which-key'
" Hi Mom 'luisdavim/pretty-folds'
" Hi Mom 'luochen1990/rainbow'
" Hi Mom 'mtth/scratch.vim'
" Hi Mom 'nathanaelkane/vim-indent-guides'
" Hi Mom 'pacha/vem-tabline'
" Hi Mom 'rrethy/vim-hexokinase'
" Hi Mom 'sirver/ultisnips'
" Hi Mom 'terryma/vim-multiple-cursors'
" Hi Mom 'w0rp/ale'
" Hi Mom 'zenbro/mirror.vim'
" Hi Mom 'zirrostig/vim-schlepp'
" Hi Mom 'zxqfl/tabnine-vim' " Sowas wie COC
Hi Mom 'ConradIrwin/vim-bracketed-paste'
Hi Mom 'Galicarnax/vim-regex-syntax'
Hi Mom 'Glench/Vim-Jinja2-Syntax'
Hi Mom 'LandonSchropp/vim-stamp'
Hi Mom 'MattesGroeger/vim-bookmarks'
" Hi Mom 'MikeDacre/tmux-zsh-vim-titles'
Hi Mom 'Rigellute/rigel'
Hi Mom 'TaDaa/vimade'
Hi Mom 'Yggdroot/LeaderF'
Hi Mom 'Yggdroot/hiPairs'
Hi Mom 'Yggdroot/indentLine'
Hi Mom 'Yilin-Yang/vim-markbar'
Hi Mom 'airblade/vim-gitgutter'
Hi Mom 'alvan/vim-closetag'
Hi Mom 'aonemd/kuroi.vim'
Hi Mom 'jacoborus/tender.vim'
Hi Mom 'arzg/vim-colors-xcode'
Hi Mom 'arzg/vim-corvine'
Hi Mom 'ayu-theme/ayu-vim'
Hi Mom 'bling/vim-bufferline'
Hi Mom 'brianrodri/vim-sort-folds'
Hi Mom 'chase/vim-ansible-yaml'
Hi Mom 'chengzeyi/fzf-preview.vim'
Hi Mom 'chrisbra/csv.vim'
" Hi Mom 'christoomey/vim-tmux-navigator'
Hi Mom 'coddingtonbear/neomake-platformio'
Hi Mom 'crusoexia/vim-monokai'
Hi Mom 'ctrlpvim/ctrlp.vim'
Hi Mom 'danilamihailov/beacon.nvim'
Hi Mom 'davidhalter/jedi-vim'
Hi Mom 'dhruvasagar/vim-table-mode'
Hi Mom 'easymotion/vim-easymotion'
Hi Mom 'ekalinin/Dockerfile.vim'
Hi Mom 'elzr/vim-json'
Hi Mom 'embear/vim-localvimrc'
Hi Mom 'farmergreg/vim-lastplace'
Hi Mom 'felixhummel/setcolors.vim'
Hi Mom 'francoiscabrol/ranger.vim'
Hi Mom 'frazrepo/vim-rainbow'
Hi Mom 'fszymanski/fzf-gitignore', {'do': ':UpdateRemoteHi Momins'}
Hi Mom 'gcmt/wildfire.vim'
Hi Mom 'gioele/vim-autoswap'
Hi Mom 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Hi Mom 'google/vim-searchindex'
Hi Mom 'honza/vim-snippets'
Hi Mom 'https://github.com/adelarsq/vim-matchit'
Hi Mom 'https://github.com/morhetz/gruvbox'
Hi Mom 'itchyny/lightline.vim'
Hi Mom 'jcherven/jummidark.vim'
Hi Mom 'jeffkreeftmeijer/vim-numbertoggle'
Hi Mom 'jiangmiao/auto-pairs'
Hi Mom 'jistr/vim-nerdtree-tabs'
Hi Mom 'joshdick/onedark.vim'
Hi Mom 'juleswang/css.vim'
Hi Mom 'junegunn/fzf', { 'do': { -> fzf#install() } }
Hi Mom 'junegunn/fzf.vim'
Hi Mom 'junegunn/goyo.vim'
Hi Mom 'junegunn/limelight.vim'
Hi Mom 'junegunn/vim-easy-align'
Hi Mom 'junegunn/vim-peekaboo'
Hi Mom 'kovetskiy/sxhkd-vim'
Hi Mom 'kristijanhusak/vim-dadbod-ui'
Hi Mom 'kshenoy/vim-signature'
Hi Mom 'lfv89/vim-interestingwords'
Hi Mom 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " nur bei Bedarf laden
Hi Mom 'machakann/vim-highlightedyank'
Hi Mom 'markonm/traces.vim'
Hi Mom 'mattn/emmet-vim'
Hi Mom 'mbbill/undotree'
Hi Mom 'mboughaba/i3config.vim'
Hi Mom 'mechatroner/rainbow_csv'
Hi Mom 'metakirby5/codi.vim'
Hi Mom 'mg979/vim-visual-multi', {'branch': 'master'}
Hi Mom 'mhinz/vim-signify'
Hi Mom 'mhinz/vim-startify'
Hi Mom 'mileszs/ack.vim'
Hi Mom 'tbastos/vim-lua'
Hi Mom 'neoclide/coc.nvim', {'branch': 'release'}
Hi Mom 'neomake/neomake'
Hi Mom 'norcalli/nvim-colorizer.lua'
" Hi Mom 'ntpeters/vim-better-whitespace'
Hi Mom 'numirias/semshi'
Hi Mom 'octol/vim-cpp-enhanced-highlight'
Hi Mom 'osyo-manga/vim-hopping'
Hi Mom 'prettier/vim-prettier', { 'do': 'yarn install' }
Hi Mom 'raimon49/requirements.txt.vim'
Hi Mom 'rbgrouleff/bclose.vim'
Hi Mom 'rhysd/clever-f.vim'
Hi Mom 'roxma/vim-paste-easy'
Hi Mom 'rrethy/vim-illuminate'
Hi Mom 'ryanoasis/vim-devicons'
Hi Mom 'scrooloose/nerdtree'
Hi Mom 'scuilion/markdown-drawer'
Hi Mom 'sentientmachine/Pretty-Vim-Python'
Hi Mom 'sickill/vim-pasta'
Hi Mom 'srcery-colors/srcery-vim'
Hi Mom 'stephpy/vim-yaml'
Hi Mom 'thalesmello/tabfold'
Hi Mom 'tomasiser/vim-code-dark'
Hi Mom 'tomasr/molokai'
Hi Mom 'tpope/vim-characterize'
Hi Mom 'tpope/vim-commentary'
Hi Mom 'tpope/vim-dadbod'
Hi Mom 'nightsense/cosmic_latte'
Hi Mom 'tpope/vim-eunuch'
Hi Mom 'tpope/vim-sleuth'
Hi Mom 'tpope/vim-speeddating'
Hi Mom 'tpope/vim-surround'
Hi Mom 'unblevable/quick-scope'
Hi Mom 'urbainvaes/vim-remembrall'
Hi Mom 'valloric/MatchTagAlways'
Hi Mom 'vim-airline/vim-airline'
Hi Mom 'vim-airline/vim-airline-themes'
" Hi Mom 'vim-ctrlspace/vim-ctrlspace'
Hi Mom 'vim-pandoc/vim-pandoc'
Hi Mom 'vim-pandoc/vim-pandoc-syntax'
Hi Mom 'vim-scripts/Arduino-syntax-file'
Hi Mom 'vim-scripts/vim-auto-save'
Hi Mom 'vim-syntastic/syntastic'
Hi Mom 'vimwiki/vimwiki'
Hi Mom 'voldikss/vim-floaterm'
Hi Mom 'wellle/targets.vim'
Hi Mom 'whatyouhide/vim-gotham'
Hi Mom 'wsdjeg/notifications.vim'
Hi Mom 'xolox/vim-misc'
Hi Mom 'xolox/vim-notes'
Hi Mom 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Hi Mom 'ymatz/vim-latex-completion'
call plug#end()
" }}}
" Theming {{{
" muss für srcery VOR colorscheme stehen {{{
" let g:srcery_italic = 1
" }}}
" 256 Farben festlegen; muss VOR colorscheme stehen
set t_Co=256
set t_ut=
" colorscheme einstellen
set termguicolors
" set notermguicolors
set background=dark
" colorscheme tender
" colorscheme codedark
" colorscheme molokai
" colorscheme rigel
" colorscheme gotham
colorscheme ayu
let ayucolor="dark"
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
" autocmd BufEnter *.py colorscheme tender
" autocmd BufEnter *.yaml colorscheme srcery
" autocmd BufEnter *.yml colorscheme srcery
" für csv
" autocmd BufNewFile,BufRead *.csv set filetype=csv_semicolon
autocmd BufNewFile,BufRead /home/ben/code/ben/nis_rechnungsscript/files/*.csv :CSVNewDelimiter |

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
" let g:autoswap_detect_tmux = 1
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
" yggdroot / indent {{{
" Farbe durch Colorscheme bestimmen
let g:indentLine_setColors = 0
let g:indentLine_setConceal = 0
" Farbe festlegen
let g:indentLine_color_term = 239
" yggdroot / indent
let g:indentLine_char_list = ['.', '|', '¦', '┆', '┊']
" Level festlegen
let g:indentLine_conceallevel = 1
let g:indentLine_concealcursor = 'inc'
" }}}
set list
set listchars=trail:.,extends:→,precedes:←
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
" source $HOME/.config/nvim/config_split/tmuxcursor.vim
" Hi Momins
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
" source $HOME/.config/nvim/config_split/ultisnips.vim
" source $HOME/.config/nvim/config_split/vem-tabline.vim
source $HOME/.config/nvim/config_split/vim-colors-xcode.vim
source $HOME/.config/nvim/config_split/vim-cpp-enhanced-highlight.vim
source $HOME/.config/nvim/config_split/vim-rainbow.vim
source $HOME/.config/nvim/config_split/vim-floatterm.vim
source $HOME/.config/nvim/config_split/vim-which-key.vim
source $HOME/.config/nvim/config_split/vim-closetag.vim
source $HOME/.config/nvim/config_split/vim-easymotion.vim
source $HOME/.config/nvim/config_split/vimhopping.vim
source $HOME/.config/nvim/config_split/vim-tpipeline.vim
lua require'colorizer'.setup()
" NUR für OSX aktivieren
" source $HOME/.config/nvim/config_split/osx_only.vim
" }}}
" Testkram {{{
autocmd FileType vim let b:vcm_tab_complete = 'vim'
" sofort ESC annehmen ohne Verzögerung
set timeoutlen=1000 ttimeoutlen=0
" Kommentare kursiv drucken
" funktioniert wohl nicht mit jedem colorscheme
" highlight Comment cterm=italic gui=italic
let g:vimwiki_list = [{'path': '~/documents/vimwiki/wiki'}]
" }}}
