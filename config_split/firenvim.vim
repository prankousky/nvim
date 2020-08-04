if exists('g:started_by_firenvim')
  set laststatus=0
  set wrap
  set showtabline=0
  :startinsert<CR>
else
  set laststatus=2
  set nowrap
  set showtabline=2
endif

" Settings depending upon page/element being edited
au BufEnter github.com_*.txt set filetype=markdown
au BufEnter community.home-assistant_*.txt set filetype=markdown
