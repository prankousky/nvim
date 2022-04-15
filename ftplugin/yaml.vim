" Test
" colorscheme dracula

" Tabstops
setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0-"<:> indentkeys-=<:>
" setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0" indentkeys-=<:>

" Dictionary Verhalten anders als normal
setlocal iskeyword+=_
setlocal iskeyword+=.
setlocal complete+=k

" Falls die Datei existiert, lade sie als dictionary (Home Assistant)
if filereadable('/tmp/hassstates')
	setlocal dictionary=/tmp/hassstates
endif
