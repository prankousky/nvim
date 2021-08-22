" -- Plugins {{{
" Automatisch vim-plug installieren, sofern es nicht installiert ist {{{
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}
" Plugins festlegen {{{
call plug#begin('$HOME/.config/nvim/neutest')
" ---- LSP {{{
Plug 'folke/lsp-colors.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'neovim/nvim-lspconfig'
"  }}}
"  Filetypes {{{
Plug 'chrisbra/csv.vim'
"  }}}

call plug#end()
" }}}
" Automatisch fehlende Plugins installieren beim Start {{{
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
" }}}
" Wissenswertes {{{
" -- installiere via CLI
"  # vim
" vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"
" neovim
" nvim -es -u init.vim -i NONE -c "PlugInstall" -c "qa"
" }}}
" }}}

" -- Plugin  Einstellungen {{{
" -- completion-nvim {{{
" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" }}}
" }}}

" -- Keybindings {{{
" mit Pfeiltesten zwischen Panes switchen
" }}}
