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
