call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" ---- deoplete.nvim {{{
if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
	    Plug 'Shougo/deoplete.nvim'
	      Plug 'roxma/nvim-yarp'
	        Plug 'roxma/vim-hug-neovim-rpc'
	endif
	let g:deoplete#enable_at_startup = 1

" benötigt mit normalem vim das hier
Plug 'roxma/vim-hug-neovim-rpc'
" ---- }}}
" ---- Farbige Brackets {{{
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
" ---- }}}
" ---- mit Leader+m Markbar aufrufen {{{
Plug 'Yilin-Yang/vim-markbar'
nmap <Leader>m <Plug>ToggleMarkbar
" ---- }}}
" Initialize plugin system
call plug#end()

