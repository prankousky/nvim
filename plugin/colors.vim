" let g:benihmsein_colorscheme = "dark_catppuccino"
let g:benihmsein_colorscheme = "gruvbox"

fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:benihmsein_colorscheme])
    else
        " TODO: What the way to use g:benihmsein_colorscheme
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    highlight LineNr guifg=#ff8659
    highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#aed75f
endfunction
call ColorMyPencils()

" " Vim with me
" nnoremap <leader>cmp :call ColorMyPencils()<CR>
" nnoremap <leader>vwb :let g:benihmsein_colorscheme =

" " -- gruvbox-community settings {{{
let g:gruvbox_contrast_dark = 'hard'
" " Markierung bei 80
let g:gruvbox_color_column = 'green'
" " Italics aktivieren
let g:gruvbox_italicize_strings = 1
" " Ausprobieren
let g:gruvbox_improved_strings = 0
let g:gruvbox_improved_warnings = 1
" " -- }}}
