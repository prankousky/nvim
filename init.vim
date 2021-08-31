" #########################################################################
" ##############################   Plugins   ##############################
" #########################################################################
" -- Plugins {{{
" Automatisch vim-plug installieren, sofern es nicht installiert ist {{{
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}
" Plugins festlegen {{{
call plug#begin('$HOME/.config/nvim/meine_plugs')
" ---- LSP // Completion {{{
Plug 'dguo/blood-moon', {'rtp': 'applications/vim'}
Plug 'folke/lsp-colors.nvim'
Plug 'folke/trouble.nvim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'jiangmiao/auto-pairs'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets' " gehört zu ultisnipts
Plug 'ycm-core/YouCompleteMe'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" ---- }}}
" ---- Filetypes {{{
Plug 'chrisbra/csv.vim'
Plug 'freitass/todo.txt-vim'
Plug 'vimwiki/vimwiki'
" ---- }}}
" ---- Move Around {{{
" Plug 'justinmk/vim-sneak'
Plug 'ggandor/lightspeed.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'terryma/vim-expand-region'
Plug 'thalesmello/tabfold'
Plug 'unblevable/quick-scope'
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" ---- }}}
" ---- Visuelles {{{
" -- Themes
" Plug 'rakr/vim-one'
" let g:airline_theme='one'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
" -- Misc
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'Yggdroot/hiPairs' " highlighte umrandende Symbole
" Plug 'Yggdroot/indentLine'
Plug 'andymass/vim-matchup' " ähnlich wie hiPairs
Plug 'TaDaa/vimade'
Plug 'folke/which-key.nvim'
Plug 'itchyny/vim-cursorword' " unterstreiche fokussiertes Wort
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'ryanoasis/vim-devicons' " vimscript
Plug 'yamatsum/nvim-nonicons'
Plug 'yazgoo/yank-history' " History anzeigen
" -- Status // Dashboard
" Plug 'famiu/feline.nvim'
" Plug 'ojroques/nvim-hardline'
Plug 'mhinz/vim-startify'
Plug 'romgrk/barbar.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" ---- }}}
" ---- Search // Replace // Comment // Bookmark {{{
Plug 'LandonSchropp/vim-stamp' " Siw
Plug 'MattesGroeger/vim-bookmarks'
Plug 'chengzeyi/fzf-preview.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'windwp/nvim-spectre'
" ---- }}}
" ---- Naviation und Co. {{{
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" ---- }}}
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
" ---- }}}
" ---- }}}
" ########################################################################
" ##############################   Basics   ##############################
" ########################################################################
" -- Basics {{{
" Leader festlegen
let mapleader = ","
" Localleader festlegen
let localleader = "<space>"
" vernünftig einfügen
set paste
" 256 Farben; MUSS VOR colorscheme stehen
set t_Co=256
set t_ut=
set termguicolors
" Farben festlegen
" colorscheme blood-moon
colorscheme molokai
" set background=dark
" set cursorcolumn
" set cursorline
" Merke Position im Dokument
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Vimwiki Path festlegen
let g:vimwiki_list = [{'path': '~/documents/vimwiki/wiki'}]
" Ruler => zeige rechts unten `Zeile,Buchstabe`
set ruler
" Regex Magic
set magic
" Tab ist 2 Leerzeichen
set shiftwidth=4
set tabstop=4
" set expandtab " MUSS aus für indentZeug
" Tab beim Editieren _auch_ 4 Leerzeichen
set softtabstop=4
" Lade VIMRC nach speichern neu
autocmd BufWritePost init.vim source $MYVIMRC
autocmd BufWritePost neu.vim source neu.vim
" letzte Zeile eines Paragraphen IMMER sichtbar
set display+=lastline
" immer X Zeilen über und unter dem Cursor anzeigen
set scrolloff=10
" Statusbar: immer anzeigen
set laststatus=2
" Tab Completion als Menü anzeigen
set wildmenu
" Dialog, falls geänderte Datei geschlossen wird
set confirm
" }}}
" ###########################################################################
" ##############################   Filetypes   ##############################
" ###########################################################################
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
set smarttab
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
" ####################################################################################
" ##############################   Plugin Einstellungen   ############################
" ####################################################################################
" ---- Plugin  Einstellungen {{{
" -- completion-nvim {{{
" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" -- }}}
" -- unblevable/quick-scope {{{
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Farben anpassen
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#01bb3f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ff0088' gui=underline ctermfg=81 cterm=underline
augroup END
" -- }}}
" -- RRethy/vim-hexokinase {{{
" Neovim default
let g:Hexokinase_highlighters = [ 'backgroundfull', 'sign_column', 'virtual' ]
" let g:Hexokinase_highlighters = [ 'sign_column' ]
" Patterns to match for all filetypes
" Can be a comma separated string or a list of strings
" Default value:
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
" -- windwp/nvim-spectre {{{
nnoremap <leader>S :lua require('spectre').open()<CR>
"search current word
nnoremap <leader>sw :lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s :lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" -- }}}
" -- yazgoo/yank-history {{{
" nnoremap <leader>y :YankHistoryRgYank<CR>
nnoremap <leader>y :YankHistoryRgPaste<CR>
" -- }}}
" -- folke/which-key.nvim {{{
nnoremap <silent> <leader> :WhichKey<CR>
" -- }}}
" -- liuchengxu/vim-which-key {{{
" nnoremap <silent> <leader> :WhichKey ','<CR>
" -- }}}
" -- Ranger {{{
" ZUERST default bindings entfernen...
let g:ranger_map_keys = 0
" DAMIT das Mapping auch in :WhichKey angezeigt wird
map <leader>f :Ranger<CR>
" -- }}}
" -- ojroques/nvim-hardline {{{
" Initialisieren
" lua require('hardline').setup {}
" Konfigurieren
" -- }}}
" -- Famiu/feline.nvim {{{
" Initialisieren
" lua require('feline').setup {}
" Konfigurieren
" -- }}}
" " -- romgrk/barbar.nvim {{{
" " Move to previous/next Tab / Buffer
" nnoremap <silent> <A-,> :BufferPrevious<CR>
" nnoremap <silent> <A-.> :BufferNext<CR>
" " NOTE: If barbar's option dict isn't created yet, create it
" let bufferline = get(g:, 'bufferline', {})
" " New tabs are opened next to the currently selected tab.
" " Enable to insert them in buffer number order.
" let bufferline.add_in_buffer_number_order = v:false
" " Enable/disable animations
" let bufferline.animation = v:true
" " Enable/disable auto-hiding the tab bar when there is a single buffer
" let bufferline.auto_hide = v:true
" " Enable/disable current/total tabpages indicator (top right corner)
" let bufferline.tabpages = v:true
" " Enable/disable close button
" let bufferline.closable = v:true
" " Enables/disable clickable tabs
" "  - left-click: go to buffer
" "  - middle-click: delete buffer
" let bufferline.clickable = v:true
" " Excludes buffers from the tabline
" let bufferline.exclude_ft = ['javascript']
" let bufferline.exclude_name = ['package.json']
" " Enable/disable icons
" " if set to 'buffer_number', will show buffer number in the tabline
" " if set to 'numbers', will show buffer index in the tabline
" " if set to 'both', will show buffer index and icons in the tabline
" let bufferline.icons = v:true
" " Sets the icon's highlight group.
" " If false, will use nvim-web-devicons colors
" let bufferline.icon_custom_colors = v:false
" " Configure icons on the bufferline.
" let bufferline.icon_separator_active = '▎'
" let bufferline.icon_separator_inactive = '▎'
" let bufferline.icon_close_tab = ''
" let bufferline.icon_close_tab_modified = '●'
" let bufferline.icon_pinned = '車'
" " If true, new buffers will be inserted at the end of the list.
" " Default is to insert after current buffer.
" let bufferline.insert_at_end = v:false
" " Sets the maximum padding width with which to surround each tab.
" let bufferline.maximum_padding = 4
" " Sets the maximum buffer name length.
" let bufferline.maximum_length = 30
" " If set, the letters for each buffer in buffer-pick mode will be
" " assigned based on their name. Otherwise or in case all letters are
" " already assigned, the behavior is to assign letters in order of
" " usability (see order below)
" let bufferline.semantic_letters = v:true
" " New buffer letters are assigned in this order. This order is
" " optimal for the qwerty keyboard layout but might need adjustement
" " for other layouts.
" let bufferline.letters =
"   \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'
" " Sets the name of unnamed buffers. By default format is "[Buffer X]"
" " where X is the buffer number. But only a static string is accepted here.
" let bufferline.no_name_title = v:null
" " -- }}}
" -- 'Yggdroot/indentLine' {{{
" Auto Enable
let g:indentLine_enabled = 0
let g:indentLine_setColors = 1
" Farbe festlegen
let g:indentLine_color_term = 239
" Anzeige
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
" -- }}}
" -- 'lukas-reineke/indent-blankline.nvim' {{{
"lua << EOF
"vim.opt.termguicolors = true,
"vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 blend=nocombine]]
"vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B blend=nocombine]]
"vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 blend=nocombine]]
"vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 blend=nocombine]]
"vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF blend=nocombine]]
"vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD blend=nocombine]]
"vim.opt.listchars = {
"    space = " ",
"    -- eol = "↴"
"}
"require("indent_blankline").setup {
"    eol = "↴",
"    char = "|",
"    show_end_of_line = false,
"    show_current_context = true,
"    space_char_blankline = " ",
"    -- space_char_blankline = "⋅",
"    char_highlight_list = {
"       "IndentBlanklineIndent1",
"       "IndentBlanklineIndent2",
"       "IndentBlanklineIndent3",
"       "IndentBlanklineIndent4",
"       "IndentBlanklineIndent5",
"       "IndentBlanklineIndent6",
"    },
"    -- show_trailing_blankline_indent = true
"    show_trailing_blankline_indent = false,
"}
"EOF
lua << EOF
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD blend=nocombine]]

require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}
EOF
" let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
" let g:indent_blankLine_color_term = 120
"" -- }}}
" -- 'karb94/neoscroll.nvim' {{{
lua require('neoscroll').setup()
" -- }}}
" -- 'MattesGroeger/vim-bookmarks' {{{
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
" -- }}}
" ---- }}}
" -- 'jiangmiao/auto-pairs' {{{
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'
" -- }}}
" " -- 'Yggdroot/hiPairs' {{{
" let g:hiPairs_enable_matchParen = 1
" let g:hiPairs_hl_matchPair = { 'term'    : 'underline,bold',
"                \                  'cterm'   : 'bold',
"                \                  'ctermfg' : '0',
"                \                  'ctermbg' : '180',
"                \                  'gui'     : 'bold',
"                \                  'guifg'   : 'Black',
"                \                  'guibg'   : '#D3B17D' }

" let g:hiPairs_hl_unmatchPair = { 'term'    : 'underline,italic',
"                 \                    'cterm'   : 'italic',
"                 \                    'ctermfg' : '15',
"                 \                    'ctermbg' : '12',
"                 \                    'gui'     : 'italic',
"                 \                    'guifg'   : 'White',
"                 \                    'guibg'   : 'Red' }
" " -- }}}
" -- 'andymass/vim-matchup' {{{
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
" -- }}}
" 'ms-jpq/coq_nvim' {{{
let g:coq_settings = { 'auto_start': v:true }
" 🐓 Coq completion settings

" Set recommended to false
let g:coq_settings = { "keymap.recommended": v:false }

" Keybindings
ino <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
ino <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
ino <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
ino <silent><expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
ino <silent><expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
ino <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"
" }}}
" -- }}}
" #############################################################################
" ##############################   Keybindings   ##############################
" #############################################################################
" ---- Keybindings {{{
" mit Pfeiltesten zwischen Panes switchen
" Öffne Plugin in Github
nnoremap <leader>g yi' :!firefox --new-tab https://github.com/<C-R>"<CR><CR>
" ---- }}}
" #########################################################################
" ##############################   Folding   ##############################
" #########################################################################
" -- Folding {{{
set foldenable
set foldmethod=marker
" Beim Öffnen zugeklkappt
set foldlevel=20
set modelines=1
" speichern, welche Folds auf/zu sind
"autocmd BufWrite * mkview
"autocmd BufRead * silent loadview
" AUTOMATISCH Systemclipboard benutzen
noremap <leader>y "+y
noremap <leader>p "+p
" -- }}}
" --  Aufgeteilte Konfiguration {{{
source $HOME/.config/nvim/config_split/airline_lightline.vim
source $HOME/.config/nvim/config_split/autocommands.vim
source $HOME/.config/nvim/config_split/backups.vim
" source $HOME/.config/nvim/config_split/coc-settings.vim
source $HOME/.config/nvim/config_split/fzf.vim
source $HOME/.config/nvim/config_split/keybindings.vim
source $HOME/.config/nvim/config_split/startify.vim
" source $HOME/.config/nvim/config_split/ultisnips.vim
source $HOME/.config/nvim/config_split/vim-easymotion.vim
" -- }}}
" ###########################################################################################
" ##############################   TODO: alles in eine Datei   ##############################
" ###########################################################################################
" -- NOCH TESTEN {{{
" Name des Fensters ist immer Name der aktuellen Datei
set title
" sofort ESC annehmen ohne Verzögerung
set timeoutlen=1000 ttimeoutlen=0
" Kommentare kursiv drucken
" funktioniert wohl nicht mit jedem colorscheme
" highlight Comment cterm=italic gui=italic
"  }}}
" ######################################################################
" ##############################   Rest   ##############################
" ######################################################################
" -- GANZ UNTEN {{{
highlight Normal ctermbg=black
" indents minimal visualisieren
set invlist
" set listchars=eol:↴,tab:▸
" set listchars=eol:↓,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·
" Cursor Shapes
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif
" youcompleteme YCM tab raus hauen
" let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
" }}}
