" Backups festlegen {{{ 
set backup
" dort Backups speichern
set backupdir=~/.tmp
" dort Swap Files speichern
set dir=~/.tmp
set writebackup
" Rückgängig machen auch nach Speichern
if has('persistent_undo')      "check if your vim version supports it
    set undofile                 "turn on the feature  
    set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
endif  
" }}}
