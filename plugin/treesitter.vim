" TODO:
" vim.treesitter.require_language("python", "/path/to/python.so")

" ---- TREESITTER REGULÄR {{{
lua <<EOF
require 'nvim-treesitter.configs'.setup {
   -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ensure_installed = {"bash", "dockerfile", "html", "javascript", "json", "latex", "markdown", "norg", "org", "python", "regex", "vim", "yaml" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
 incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  indent = {
    enable = true
  }
  }
}
EOF
" }}}
" " TREESITTER-TEXTOBJECTS {{{
" lua << EOF
" require'nvim-treesitter.configs'.setup {
"   textobjects = {
"     select = {
"       enable = true,

"       -- Automatically jump forward to textobj, similar to targets.vim
"       lookahead = true,

"       keymaps = {
"         -- You can use the capture groups defined in textobjects.scm
"         ["af"] = "@function.outer",
"         ["if"] = "@function.inner",
"         ["ac"] = "@class.outer",
"         ["ic"] = "@class.inner",
"       },
"     },
"   },
" }
" EOF
" " }}}
" m-demare/hlargs.nvim {{{
lua << EOF
-- initialisieren
-- require('hlargs').setup()
-- aktivieren
-- require('hlargs').enable()
-- require('hlargs').enable()
EOF
" -- }}}
