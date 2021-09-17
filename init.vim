" 'prankousky/nvim'
"
"******************************************************************************"
"                            Plugins (via plug.vim)                            "
"******************************************************************************"
" -- Plugins {{{
"******************************************************************************"
"                                   Plugged                                    "
"******************************************************************************"

" Automatisch vim-plug installieren, sofern es nicht installiert ist {{{
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}
"******************************************************************************"
"                              Plugins festlegen                               "
"******************************************************************************"
" Plugins festlegen {{{
call plug#begin('$HOME/.config/nvim/meine_plugs')
" ---- LSP // Completion {{{
	Plug 'ambv/black'
	Plug 'dense-analysis/ale'
	Plug 'folke/lsp-colors.nvim'
	Plug 'folke/trouble.nvim'
	Plug 'glepnir/lspsaga.nvim'
	Plug 'hrsh7th/nvim-compe'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-symbols.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'nvim-treesitter/playground'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	Plug 'rafamadriz/friendly-snippets'
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'simrat39/symbols-outline.nvim'
	Plug 'sudormrfbin/cheatsheet.nvim'
	Plug 'windwp/nvim-autopairs'
" ---- }}}
" ---- Filetypes/ Coding {{{
	Plug 'KabbAmine/vCoolor.vim' " <Alt+r|v|w>
	Plug 'cespare/vim-toml'
	Plug 'chrisbra/csv.vim',  { 'for' : 'csv' } " genial
	Plug 'freitass/todo.txt-vim'
	Plug 'lervag/vimtex'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'mbbill/undotree'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
	Plug 'theniceboy/vim-calc'
	Plug 'vim-utils/vim-man' " man Pages in VIM
	Plug 'vimwiki/vimwiki'
	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'NTBBloodbath/rest.nvim' " REST API inside nvim
	Plug 'thinca/vim-quickrun' " :QuickRun um Datei (oder Teil der Datei) auszuführen
	Plug 'ingydotnet/yaml-vim'  " SYNTAX yaml
" ---- }}}
" ---- Visuelles {{{
" -- Themes
	Plug 'Pocco81/Catppuccino.nvim'
	Plug 'dguo/blood-moon', {'rtp': 'applications/vim'}
	Plug 'gruvbox-community/gruvbox'
	Plug 'joshdick/onedark.vim'
	Plug 'luochen1990/rainbow'
	Plug 'tomasr/molokai'
	Plug 'romgrk/doom-one.vim'
	" -- Misc
	Plug 'Yggdroot/hiPairs' " highlighte umrandende Symbole
	Plug 'andymass/vim-matchup' " ähnlich wie hiPairs
	Plug 'folke/which-key.nvim'
	Plug 'itchyny/vim-cursorword' " unterstreiche fokussiertes Wort
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'
	Plug 'kyazdani42/nvim-web-devicons' " lua
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'machakann/vim-highlightedyank'
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
	Plug 'ryanoasis/vim-devicons' " vimscript
	Plug 'yamatsum/nvim-nonicons'
	Plug 'yazgoo/yank-history' " History anzeigen
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'edluffy/specs.nvim' " visueller Cursor
	Plug 'tmhedberg/simpylfold' " Python Folding
" -- Status // Dashboard
      " Plug 'romgrk/barbar.nvim'
	Plug 'mhinz/vim-startify'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
" ---- }}}
" ---- Search // Replace // Comment // Bookmark {{{
	Plug 'LandonSchropp/vim-stamp' " Siw
	Plug 'MattesGroeger/vim-bookmarks'
	Plug 'chengzeyi/fzf-preview.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'kurkale6ka/vim-swap' " \x, \cx, etc. zum Switchen um Symbole
	Plug 'gioele/vim-autoswap' " automatisch mit swap Files umgehen
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 's1n7ax/nvim-comment-frame'
	Plug 'tommcdo/vim-lion'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-eunuch' " :Move, :Rename, etc.
	Plug 'tpope/vim-sleuth' " Autoindent
	Plug 'tpope/vim-speeddating'
	Plug 'tpope/vim-surround'
	Plug 'windwp/nvim-spectre'
" ---- }}}
" ---- Naviation und Co. {{{
	Plug 'Rasukarusan/nvim-select-multi-line'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'ggandor/lightspeed.nvim'
	Plug 'karb94/neoscroll.nvim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'terryma/vim-expand-region'
	Plug 'thalesmello/tabfold'
	Plug 'unblevable/quick-scope'
	Plug 'vifm/vifm.vim'
	Plug 'vim-ctrlspace/vim-ctrlspace'
" ---- }}}
call plug#end()
" }}}
"******************************************************************************"
"                       Plugins automatisch installieren                       "
"******************************************************************************"
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
"******************************************************************************"
"                             Plugin Einstellungen                             "
"******************************************************************************"
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
" nnoremap <leader>S :lua require('spectre').open()<CR>
"search current word
nnoremap <leader>sw :lua require('spectre').open_visual({select_word=true})<CR>
" vnoremap <leader>s :lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" -- }}}
" -- yazgoo/yank-history {{{
" nnoremap <leader>y :YankHistoryRgYank<CR>
nnoremap <leader>y :YankHistoryRgPaste<CR>
" -- }}}
" -- liuchengxu/vim-which-key {{{
" nnoremap <silent> <leader> :WhichKey ','<CR>
" -- }}}
" -- Ranger {{{
" ZUERST default bindings entfernen...
let g:ranger_map_keys = 0
" DAMIT das Mapping auch in :WhichKey angezeigt wird
map <space>f :Ranger<CR>
" -- }}}
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
lua << EOF
vim.opt.termguicolors = true,
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD blend=nocombine]]
vim.opt.listchars = {
    space = " ",
    eol = "↴"
}
require("indent_blankline").setup {
    eol = "↴",
    char = "|",
    show_end_of_line = false,
    show_current_context = true,
    space_char_blankline = " ",
    -- space_char_blankline = "⋅",
    char_highlight_list = {
       "IndentBlanklineIndent1",
       "IndentBlanklineIndent2",
       "IndentBlanklineIndent3",
       "IndentBlanklineIndent4",
       "IndentBlanklineIndent5",
       "IndentBlanklineIndent6",
    },
    -- show_trailing_blankline_indent = true
    show_trailing_blankline_indent = false,
}
EOF
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
" -- 'andymass/vim-matchup' {{{
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
" -- }}}
" -- 'windwp/nvim-autopairs' {{{
lua << EOF
require('nvim-autopairs').setup{}
require('nvim-autopairs').enable()
local map_bs = true  -- map the <BS> key
local disable_filetype = { "TelescopePrompt" }
local ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", "")
local enable_moveright = true
local enable_afterquote = true  -- add bracket pairs after quote
local enable_check_bracket_line = true  --- check bracket in same line
local check_ts = false
local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

npairs.setup({ map_bs = false })

-- vim.g.coq_settings = { keymap = { recommended = false } }

-- these mappings are coq recommended mappings unrelated to nvim-autopairs
remap('i', '<esc>', [[pumvisible() ? "<c-e><esc>" : "<esc>"]], { expr = true, noremap = true })
remap('i', '<c-c>', [[pumvisible() ? "<c-e><c-c>" : "<c-c>"]], { expr = true, noremap = true })
remap('i', '<tab>', [[pumvisible() ? "<c-n>" : "<tab>"]], { expr = true, noremap = true })
remap('i', '<s-tab>', [[pumvisible() ? "<c-p>" : "<bs>"]], { expr = true, noremap = true })

-- skip it, if you use another global object
_G.MUtils= {}

MUtils.CR = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
      return npairs.esc('<c-y>')
    else
      -- you can change <c-g><c-g> to <c-e> if you don't use other i_CTRL-X modes
      return npairs.esc('<c-g><c-g>') .. npairs.autopairs_cr()
    end
  else
    return npairs.autopairs_cr()
  end
end
remap('i', '<cr>', 'v:lua.MUtils.CR()', { expr = true, noremap = true })

MUtils.BS = function()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
    return npairs.esc('<c-e>') .. npairs.autopairs_bs()
  else
    return npairs.autopairs_bs()
  end
end
remap('i', '<bs>', 'v:lua.MUtils.BS()', { expr = true, noremap = true })
EOF
" -- }}}
" -- 'junegunn/goyo.vim' {{{
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" -- }}}
" -- 'junegunn/limelight.vim' {{{{{{
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
" let g:limelight_conceal_ctermfg = 240
" let g:limelight_conceal_ctermfg = 'Pink'

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'gray'
" let g:limelight_conceal_guifg = 'Pink'

" Default: 0.5
let g:limelight_default_coefficient = 0.1

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 0

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
" let g:limelight_priority = -1
let g:limelight_priority = 4
" -- }}}}}}
" -- 'lewis6991/gitsigns.vim' {{{
lua require('gitsigns').setup()
nnoremap <leader>gg :Gitsigns refresh<CR>
nnoremap <leader>gh :Gitsigns diffthis<CR>
" -- }}}
" -- 'hrsh7th/nvim-compe' {{{

" wenn MIT nvim-autopairs, nutze diese Bindings
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

highlight link CompeDocumentation NormalFloat

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
let g:compe.source.emoji = v:true

lua << EOF
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
EOF
" -- }}}
" -- 's1n7ax/nvim-comment-frame' {{{
lua << EOF
require('nvim-comment-frame').setup({
    languages = {
        lua = {
            -- start the comment with this string
            start_str = '--[[',

            -- end the comment line with this string
            end_str = ']]--',

            -- fill the comment frame border with this character
            fill_char = '*',

            -- width of the comment frame
            frame_width = 80,

            -- wrap the line after 'n' characters
            line_wrap_len = 70,

            -- automatically indent the comment frame based on the line
            auto_indent = true,

            -- add comment above the current line
            add_comment_above = false,
        },
        vim = {
            -- start the comment with this string
            start_str = '"',

            -- end the comment line with this string
            end_str = '"',

            -- fill the comment frame border with this character
            fill_char = '*',

            -- width of the comment frame
            frame_width = 80,

            -- wrap the line after 'n' characters
            line_wrap_len = 70,

            -- automatically indent the comment frame based on the line
            auto_indent = true,

            -- add comment above the current line
            add_comment_above = true,
        },
    }
})
EOF
" -- 'ray-x/lsp_signature.nvim' {{{
lua << EOF
cfg = {
  bind = true, -- This is mandatory, otherwise border config won't get registered.
               -- If you want to hook lspsaga or other signature handler, pls set to false
  doc_lines = 2, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                 -- set to 0 if you DO NOT want any API comments be shown
                 -- This setting only take effect in insert mode, it does not affect signature help in normal
                 -- mode, 10 by default

  floating_window = true, -- show hint in a floating window, set to false for virtual text only mode

  floating_window_above_first = true, -- try to place the floating above the current line when possible Note:
  -- will set to true when fully tested
  fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
  hint_enable = true, -- virtual hint enable
  hint_prefix = "🐼 ",  -- Panda for parameter
  hint_scheme = "String",
  use_lspsaga = false,  -- set to true if you want to use lspsaga popup
  hi_parameter = "Search", -- how your parameter will be highlight
  max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
                   -- to view the hiding contents
  max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
  transpancy = 0, -- set this value if you want the floating windows to be transpant (100 fully transpant), nil to disable(default)
  handler_opts = {
    border = "double"   -- double, single, shadow, none
  },

  trigger_on_newline = false, -- set to true if you need multiple line parameter, sometime show signature on new line can be confusing, set it to false for #58
  extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
  -- deprecate !!
  -- decorator = {"`", "`"}  -- this is no longer needed as nvim give me a handler and it allow me to highlight active parameter in floating_window
  zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
  debug = false, -- set to true to enable debug logging
  log_path = "debug_log_file_path", -- debug log path

  padding = ' | ', -- character to pad on left and right of signature can be ' ', or '|'  etc

  shadow_blend = 36, -- if you using shadow as border use this set the opacity
  shadow_guibg = '#E06EEE', -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
  timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
  toggle_key = '<C-x>' -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
}

require'lsp_signature'.on_attach(cfg, bufnr) -- no need to specify bufnr if you don't use toggle_key
EOF
" -- }}}
" -- 'dense-analysis/ale' {{{
" automatisch speichern
highlight ALEWarning ctermbg=DarkMagenta
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let b:ale_linters = {
\	'*': ['stylelint', 'eslint'],
\	'python': ['pylint'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['black'],
\}
" -- }}}
" -- 'luochen1990/rainbow' {{{
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" -- }}}
" -- 'nvim-treesitter/nvim-treesitter' {{{
" Consistent syntax highlighting.
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" Incremental selection based on the named nodes from the grammar.
lua <<EOF
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF

" Indentation based on treesitter for the = operator. NOTE: This is an experimental feature.
lua <<EOF
require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  }
}
EOF

lua <<EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=always',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
EOF
" Folding
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
lua local ts_utils = require 'nvim-treesitter.ts_utils'

" " Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" -- }}}
" -- 'Yggdroot/hiPairs' {{{
let g:hiPairs_enable_matchParen = 1
let g:hiPairs_hl_matchPair = { 'term'    : 'underline,bold',
               \                  'cterm'   : 'bold',
               \                  'ctermfg' : '0',
               \                  'ctermbg' : '180',
               \                  'gui'     : 'bold',
               \                  'guifg'   : 'White',
               \                  'guibg'   : '#01bb3f' }

let g:hiPairs_hl_unmatchPair = { 'term'    : 'underline,italic',
                \                    'cterm'   : 'italic',
                \                    'ctermfg' : '15',
                \                    'ctermbg' : '12',
                \                    'gui'     : 'italic',
                \                    'guifg'   : 'Black',
                \                    'guibg'   : '#ff0088' }
" -- }}}
" -- }}}
"******************************************************************************"
"                                     TEST                                     "
"******************************************************************************"
" -- NOCH TESTEN {{{
" Name des Fensters ist immer Name der aktuellen Datei
set title
" sofort ESC annehmen ohne Verzögerung
set timeoutlen=1000 ttimeoutlen=0
" Kommentare kursiv drucken
" funktioniert wohl nicht mit jedem colorscheme
" highlight Comment cterm=italic gui=italic
"  }}}
" 'vim-ctrlspace/vim-ctrlspace' {{{
" geht nur hiermit
set hidden
" Taste festlegen
let g:CtrlSpaceDefaultMappingKey = "<C-space> "
" }}}
"******************************************************************************"
"                                     REST                                     "
"******************************************************************************"
" -- GANZ UNTEN {{{
highlight Normal ctermbg=black
" indents minimal visualisieren
" set invlist
" set listchars=eol:↴,tab:▸
" set listchars=eol:↓,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·
"******************************************************************************"
"                              ALWAYS REMEMBER ;)                              "
"******************************************************************************"
" vi: filetype=vim
