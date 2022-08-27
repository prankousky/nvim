" Ben's Farben für 'folke/which-key.nvim'
" highlight WhichKey guifg='#ff0088' gui=none ctermfg=162 cterm=none
" highlight WhichKeyDisc guifg='#ff0088' gui=none ctermfg=162 cterm=none
" highlight WhichKeyFloat guifg='#FFFFFF' gui=none ctermfg=15 cterm=none
" " highlight WhichKeyFloat guifg='#01bb3f' gui=none ctermfg=70 cterm=none
" highlight WhichKeyGroup guifg='#ff0088' gui=none ctermfg=162 cterm=none
" highlight WhichKeySeparator guifg='#FFFFFF' gui=none ctermfg=15 cterm=none
" highlight WhichKeyValue guifg='#ff0088' gui=none ctermfg=162 cterm=none

" nnoremap <silent> <C-w> :WhichKey<CR>
" nnoremap <silent> <leader> :WhichKey<CR>

" Default (und abgeänderte) Config
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    ["<cr>"] = "ENTER",
    ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "top", -- bottom, top
    margin = { 1, 0, 4, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 4 }, -- extra window padding [top, right, bottom, left]
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}
local wk = require("which-key")
wk.register({
  -- ["<backspace>"] = { ":CHADopen<CR>", "CHADTree Toggle" },
  ["<leader>."]   = { ":lcd %:p:h<CR>", "Setze Workingpath HIER" },
  ["<leader>?"]   = { ":Cheatsheet", "Cheatsheet anzeigen" },
 -- ["<leader>X"] = { "<Plug>SwapWithL_WORD", "Tausche Wort mit dem LINKS daneben" },
 -- ["<leader>x"] = { "<Plug>SwapWithR_WORD", "Tausche Wort mit dem RECHTS daneben" },
  -- NIS
  ["<leader>n"]   = { name = "NIS" },
  ["<leader>na"]  = { ":Cheatsheet<CR>nis", "Cheatsheet anzeigen" },
  ["<leader>nn"]  = { ":call Mynext()<CR>", "nächste Rechnung" },
  ["<leader>np"]  = { ":! ./generieren.sh %<CR>", "PDF generieren und anzeigen" },
  ["<leader>ns"]  = { ":saveas <C-R>%", "Speichern unter..." },
  -- BUFFER
  ["<leader>b"]   = { name = "Buffer" },
  ["<leader>bb"]  = { ":BufferPick<CR>", "Buffer auswählen" },
  ["<leader>bd"]  = { ":BufferClose<CR>", "Buffer schließen" },
  -- ["<leader>bD"] = { ":execute '%bd\|e#'<CR>", "Schließe ANDERE Buffer" },
  -- COMMENT FRAME
  ["<leader>c"]   = { name = "CommentFrame" },
  ["<leader>cf"]  = { ":lua require('nvim-comment-frame').add_comment()<CR>", "Kommentar Single Line" },
  ["<leader>cg"]  = { ":lua require('nvim-comment-frame').add_multiline_comment()<CR>", "Kommentar Multi Line" },
  -- MARKDOWN
  ["<leader>m"]   = { name = "Markdown Preview" },
  ["<leader>me"]  = { ":MdEval<CR>", "Codeblock in Markdown evaluieren" },
  ["<leader>mg"]  = { ":Glow<CR>", "Preview in Glow (im Buffer)" },
  ["<leader>mp"]  = { "<Plug>MarkdownPreviewToggle<CR>", "Toggle Markdown Preview" },
  ["<leader>mt"]  = { ":TableModeToggle<CR>", "Toggle Table Mode" },
  -- REQUESTS
  ["<leader>r"]   = { name = "REST Requests" },
  ["<leader>rr"]  = { "<Plug>RestNvim<CR>", "Run request under the cursor" },
  ["<leader>rt"]  = { "<Plug>RestNvimPreview<CR>", "Preview the request cURL Command" },
  -- VIMWIKI
  ["<leader>w"]   = { name = "VimWiki" },
  ["<leader>wi"]  = { ":VimWikiDiaryIndex<CR>", "Tagebuchseite (VimWikiDiaryIndex" },
  ["<leader>wt"]  = { ":VimWikiTabIndex<CR>", "Hauptseite (VimWikiTabIndex)" },
  -- TELESCOPE // Suchen
  ["<leader>f"]   = { name = "Telescope" },
  ["<leader>f,"]  = { "<Plug>(easymotion-bd-f)>", "Suche CHARACTER mit Easymotion" },
  ["<leader>f."]  = { "<Plug>(easymotion-bd-w)>", "Suche WORT mit Easymotion" },
  ["<leader>fa"]  = { ":FZF<CR>", "FZF" },
  ["<leader>fA"]  = { ":Rg<CR>", "Rg" },
  ["<leader>fb"]  = { ":Telescope buffers theme=get_ivy<CR>", "Buffers" },
  ["<leader>fc"]  = { ":Telescope colorscheme theme=get_ivy<CR>", "Color Scheme" },
  ["<leader>fd"]  = { ":Telescope file_browser theme=get_ivy<CR>", "File Browser" },
  ["<leader>ff"]  = { ":Telescope find_files theme=get_ivy prompt_prefix=🔍<CR>", "Find Files" },
  ["<leader>fg"]  = { ":Telescope buffers theme=get_ivy<CR>", "Buffers" },
  ["<leader>fh"]  = { ":Telescope help_tags theme=get_ivy<CR>", "Help Tags" },
  ["<leader>fk"]  = { ":Telescope oldfiles theme=get_ivy<CR>", "Old Files" },
  ["<leader>fm"]  = { ":Telescope marks theme=get_ivy<CR>", "Marks" },
  ["<leader>fo"]  = { ":Telescope vim_options theme=get_ivy<CR>", "Vim Options" },
  ["<leader>fr"]  = { ":Telescope current_buffer_fuzzy_find theme=get_ivy<CR>", "Fuzzy Find" },
  ["<leader>fr"]  = { ":Telescope quickfix theme=get_ivy<CR>", "Quickfixes anzeigen" },
  ["<leader>fs"]  = { ":Telescope spell_suggest theme=get_ivy<CR>", "Wortvorschläge" },
  ["<leader>ft"]  = { ":HopWord<CR>", "HOP Suche per Wort" },
  ["<leader>fu"]  = { ":HopChar1<CR>", "HOP Suche Buchstabe" },
  ["<leader>fz"]  = { ":HopLine<CR>", "HOP Suche Zeile" },
  -- TOOLS
  ["<leader>t"]   = { name = "Tools" },
  ["<leader>tR"]  = { ":RegexplainerShowPopup<CR>", "RegEx unter Cursor als Plain Text ausgeben" },
  ["<leader>tf"]  = { ":!firefox --new-tab <C-R>*<CR><CR>", "Öffne URL im Register in Firefox" },
  ["<leader>tg"]  = { "gg yi' :!firefox --new-tab https://github.com/<C-R>\"<CR><CR>", "Zeige Plugin auf GitHub" },
  ["<leader>th"]  = { ":! ~/.config/benvironment/bin/vimhass.py<CR>", "HOME ASSISTANT HELPER" },
  ["<leader>tpb"] = { ":PastebinPasteAll<CR>", "PASTE Buffer" },
  ["<leader>tph"] = { ":PastebinPasteList<CR>", "PASTE History" },
  ["<leader>tpv"] = { ":PastebinPaste<CR>", "PASTE Visuelle Selektion" },
  ["<leader>tr"]  = { ":Rg<CR>", "RipGrep" },
  ["<leader>tt"]  = { ":QuickRun<CR>", "Datei (oder VISUAL) in Split ausführen" },
  -- HELPER
  ["<leader>v"]   = { name = "Helper" },
  ["<leader>vG"]  = { ":Goyo<CR><ESC>:set linebreak<CR>", "Goyo"},
  ["<leader>vO"]  = { ":setlocal spell! spelllang=en_us<CR>", "Rechtsschreibung ENGLISCH"},
  ["<leader>vS"]  = { ":Startify<CR>", "Öffne Startpage"},
  ["<leader>va"]  = { ":lua require('theprimeagen.telescope').search_dotfiles()<CR>", "~/.config/nvim" },
  ["<leader>vb"]  = { ":lua require('theprimeagen.telescope').benvironment()<CR>", "benvironment" },
  ["<leader>vc"]  = { ":NvimContextVtToggle<CR>", "NvimContextVt Toggle"},
  ["<leader>vd"]  = { ":lua require('theprimeagen.telescope').bens_dots()<CR>", "~/.config" },
  ["<leader>vf"]  = { ":CHADopen<CR>", "CHAD Toggle" },
  ["<leader>vg"]  = { ":SidebarNvimToggle<CR>", "Sidebar Toggle" },
  ["<leader>vh"]  = { ":lua require('theprimeagen.telescope').hass()<CR>", "Home Assistant" },
  -- ["<leader>vi"] = { ":set invlist!<CR>", "Toggle Visuelle Symbole"},
  ["<leader>vj"]  = { ":%!python -m json.tool", "Prettify JSON"},
  ["<leader>vl"]  = { ":LimteLight!!", "Toggle Limelight"},
  ["<leader>vo"]  = { ":setlocal spell! spelllang=de<CR>", "Rechtsschreibung DEUTSCH"},
  ["<leader>vp"]  = { ":CtrlBookmarkDir<CR>", "Wichtigste Paths"},
  ["<leader>vs"]  = { ":source $MYVIMRC<CR>:echoerr '$MYVIMRC neu geladen!'<CR>", "$MYVIMRC Neu Laden"},
  ["<leader>vu"]  = { ":UndotreeToggle<CR>", "UndoTree Toggle" },
  ["<leader>vy"]  = { "<c-u>y']<CR>", "Yank & zurück zum Ausgangspunkt VOR Yank"},
  -- VERSCHIEDENES
  ["<leader>!"]   = { ":w !sudo tee %<CR>", "Schreibe Datei als Root"},
  ["<leader>*"]   = { "gg0VGy :echoerr 'Alles kopiert :)'<CR>", "gesamten Dateiinhalt kopieren"},
  ["<leader>S"]   = { ":Sort<CR>", "(besseres) Sortieren, auch innerhalb von Zeilen"},
  ["<leader>gf"]  = { ":e <cfile><CR>", "Falls Datei unter Cursor nicht existiert, erstelle sie!"},
  ["<leader>s"]   = { ":%s///g<Left><Left><Left>", "Suchen & Ersetzen"},
  -- OHNE LEADER
  ["-"]           = { ":m +1<CR>", "Verschiebe Zeile nach unten"},
  ["_"]           = { ":m -2<CR>", "Verschiebe Zeile nach oben"},
  ["ga"]          = { "<Plug>(EasyAlign)", "Easy Align" },
  ["ge"]          = { ":GuessIndent<CR>", "Automatischer Einzug"},
  ["th"]          = { ":lua require('hlargs').toggle()<CR>:echoerr 'hlargs getoggelt'<CR>", "hlargs Toggle"},
  ["tt"]          = { ":TSCaptureUnderCursor<CR>", "Treesitter unter Cursor"},

})
EOF
" vi: filetype=vim
