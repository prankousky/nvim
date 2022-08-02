let g:vimwiki_list = [{
            \'path': '$HOME/nextcloud/Documents/vimwiki/',
            \ 'syntax': 'markdown', 'ext': '.md'
            \}]

" für zweifisch/vimwiki-assets
let vimwiki_path="$HOME/nextcloud/Documents/vimwiki/"
let vimwiki_export_path="$HOME/nextcloud/Documents/vimwiki/html_export"
let wiki_settings={
\ 'template_path': vimwiki_export_path.'vimwiki-assets/',
\ 'template_default': 'default',
\ 'template_ext': '.html',
\ 'auto_export': 0,
\ 'nested_syntaxes': {
\ 'js':'javascript',
\ }}

" let wikis=["bens"]
" let g:vimwiki_list = [{'path': '$HOME/documents/vimwiki/wiki'}]
" for wiki_name in wikis
" 	let wiki=copy(wiki_settings)
" 	let wiki.path = vimwiki_path.wiki_name.'/'
" 	let wiki.path_html = vimwiki_export_path.wiki_name.'/'
" 	let wiki.diary_index = 'index'
" 	let wiki.diary_rel_path = 'diary/'
" 	call add(g:vimwiki_list, wiki)
" endfor

" NICHT jede Markdown Datei gehört zu vim-wiki
let g:vimwiki_global_ext = 0
