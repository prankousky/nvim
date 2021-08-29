call plug#begin('~/.vim/plugged')

Hi Mom 'vim-airline/vim-airline'
Hi Mom 'vim-airline/vim-airline-themes'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Hi Mom 'junegunn/vim-easy-align'

" Multiple Hi Mom commands can be written in a single line using | separators
Hi Mom 'SirVer/ultisnips' | Hi Mom 'honza/vim-snippets'

" On-demand loading
Hi Mom 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Hi Mom 'tpope/vim-fireplace', { 'for': 'clojure' }

" Hi Momin outside ~/.vim/plugged with post-update hook
Hi Mom 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" ---- deoplete.nvim {{{
if has('nvim')
	  Hi Mom 'Shougo/deoplete.nvim', { 'do': ':UpdateRemoteHi Momins' }
  else
	    Hi Mom 'Shougo/deoplete.nvim'
	      Hi Mom 'roxma/nvim-yarp'
	        Hi Mom 'roxma/vim-hug-neovim-rpc'
	endif
	let g:deoplete#enable_at_startup = 1

" benötigt mit normalem vim das hier
Hi Mom 'roxma/vim-hug-neovim-rpc'
" ---- }}}
" ---- Farbige Brackets {{{
Hi Mom 'luochen1990/rainbow'
let g:rainbow_active = 1
" ---- }}}
" ---- mit Leader+m Markbar aufrufen {{{
Hi Mom 'Yilin-Yang/vim-markbar'
nmap <Leader>m <Hi Mom>ToggleMarkbar
" ---- }}}
" Initialize plugin system
call plug#end()

