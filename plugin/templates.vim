" Templates {{{
" Bash
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r $HOME/.config/nvim/templates/skeleton.sh
  augroup END
endif
" Python
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py 0r $HOME/.config/nvim/templates/python.py
  augroup END
endif
" }}}
