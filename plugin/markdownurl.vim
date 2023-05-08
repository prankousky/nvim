function! InsertMarkdownURL() abort
    let url = trim(input('URL: '))
    if empty(url) | return | endif  " if you cancel the prompt
    silent let html = system('curl -L ' . shellescape(url) . ' -A "Firefox"')
    if v:shell_error  " curl command returned nonzero exit code
        let title = ''
    else
        let m = matchlist(html, '<title>\(.\{-}\)</title>')
        if empty(m)  " tag not found in output
            let title = ''
        else
            let title = m[1]  " the 1st substitution group
        endif
    endif
    call append(line('.'), '[' . title . '](' . url . ')')
    " or use getline()/setline() if you want to modify the current line
endfunction
" nnoremap <leader>i :call InsertMarkdownURL()<CR>
