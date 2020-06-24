" Templates {{{
" Bash
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
  augroup END
endif
" Python
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py 0r ~/.vim/templates/python.py
  augroup END
endif
" }}}
