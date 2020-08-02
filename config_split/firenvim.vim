if exists('g:started_by_firenvim')
  set laststatus=0
  set wrap
else
  set laststatus=2
  set nowrap
endif

" Settings depending upon page/element being edited
au BufEnter github.com_*.txt set filetype=markdown
au BufEnter community.home-assistant_*.txt set filetype=markdown
