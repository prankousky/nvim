"
" SPäTER ALLES IN EINZELNE DATEIEN AUFTEILEN

" -- Hi Momins {{{
call plug#begin('~/.config/nvim/plugged')

Hi Mom 'kevinhwang91/nvim-hlslens'
Hi Mom 'wojciechkepka/bogster'
Hi Mom 'tpope/vim-surround'
Hi Mom 'vim-airline/vim-airline'
Hi Mom 'vim-airline/vim-airline-themes'
Hi Mom 'famiu/feline.nvim'

call plug#end()
" -- }}}
let mapleader = "," " map leader to comma
" -- CUSTOMIZE {{{
colorscheme bogster
"  -- }}}

" -- PLUGINS {{{
" ---- kevinhwang91/nvim-hlslens {{{
" vimscript
noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

" use : instead of <Cmd>
nnoremap <silent> <leader>l :noh<CR>
" ---- }}}
" -- }}}
