"" Vim indent file
"" Language: Yaml
"" Author: Ian Young
"" Get it bundled for pathogen: https://github.com/avakhov/vim-yaml

"if exists("b:did_indent")
"  finish
"endif
""runtime! indent/ruby.vim
""unlet! b:did_indent
"let b:did_indent = 1

"setlocal autoindent sw=2 et
"setlocal indentexpr=GetYamlIndent()
"setlocal indentkeys=o,O,*<Return>,!^F

"function! GetYamlIndent()
"  let lnum = v:lnum - 1
"  if lnum == 0
"    return 0
"  endif
"  let line = substitute(getline(lnum),'\s\+$','','')
"  let indent = indent(lnum)
"  let increase = indent + &sw
"  if line =~ ':$'
"    return increase
"  else
"    return indent
"  endif
"endfunction

"" vim:set sw=2:
" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

function! Hass()
    setlocal dictionary=/tmp/hassstates
    setlocal iskeyword+=_
    setlocal iskeyword +=.
endfunction
