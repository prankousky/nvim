" Keybindings
nnoremap <Leader>f1 :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fb :Telescope buffers theme=get_ivy<CR>
nnoremap <leader>fc :Telescope highlights theme=get_ivy<CR>
nnoremap <leader>fd :Telescope file_browser theme=get_ivy<CR>
nnoremap <leader>ff :Telescope find_files theme=get_ivy prompt_prefix=🔍<CR>
nnoremap <leader>fg :Telescope live_grep theme=get_ivy<CR>
nnoremap <leader>fh :Telescope help_tags theme=get_ivy<CR>
nnoremap <leader>fk :Telescope oldfiles theme=get_ivy<CR>
nnoremap <leader>fm :Telescope marks theme=get_ivy<CR>
nnoremap <leader>fo :Telescope vim_options theme=get_ivy<CR>
nnoremap <leader>fr :Telescope current_buffer_fuzzy_find theme=get_ivy<CR>
nnoremap <leader>fs :Telescope spell_suggest theme=get_ivy<CR>

lua << EOF
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
    winblend = 1,
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


" Farben
" highlight TelescopeSelection      guifg=#D79921 gui=bold " Selected item
" highlight TelescopeSelectionCaret guifg=#CC241D          " Selection caret
" highlight TelescopeMultiSelection guifg=#928374          " Multisections
" highlight TelescopeNormal         guibg=#00000           " Floating windows created by telescope

" " Border highlight groups
" highlight TelescopeBorder         guifg=#ffffff
" highlight TelescopePromptBorder   guifg=#ffffff
" highlight TelescopeResultsBorder  guifg=#ffffff
" highlight TelescopePreviewBorder  guifg=#ffffff

" " Highlight characters your input matches
" highlight TelescopeMatching       guifg=blue

" " Color the prompt prefix
" highlight TelescopePromptPrefix   guifg=red
