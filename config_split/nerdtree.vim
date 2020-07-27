" immer in Tabs öffnen
let NERDTreeMapOpenInTab='<Enter>'

" nerdtree-tabs {{{
" öffne beim Start (2=nur, wenn Verzeichnis geöffnet wurde) (GUI)
let g:nerdtree_tabs_open_on_gui_startup=2
" dasselbe, aber für cli
let g:nerdtree_tabs_open_on_console_startup=2
" in neuem Tab automatisch öffnen
let g:nerdtree_tabs_open_on_new_tab=1
" beim Tabwechsel unfokussieren, damit unfokussierter Tab Namen der Datei
" zeigt
let g:nerdtree_tabs_meaningful_tab_names=1
" und beim Zurück-Fokussieren -sofern vorher fokussiert gewesen- auch wieder
" automatisch anwählen
let g:nerdtree_tabs_synchronize_focus=1
" synchronisieren NerdTree Fenster
let g:nerdtree_tabs_synchronize_view=1
" }}}
