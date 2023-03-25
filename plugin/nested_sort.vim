command! -range=% TodoSort call TodoSort(<line1>,<line2>)

fun! TodoSort(line1, line2)
  if indent(a:line1) | return | endif

  let Compare = { a, b -> a.line == b.line ? 0 : a.line < b.line ? -1 : 1 }
  let lines = []
  let stack = [lines]
  let previndent = 0

  for lnum in range(a:line1, a:line2)
    let indent = indent(lnum)
    if indent > previndent
       call add(stack, stack[-1][-1].children)
    elseif indent < previndent
      for _ in range((previndent - indent) / shiftwidth())
        call sort(stack[-1], Compare)
        call remove(stack, -1)
      endfor
    endif
    call add(stack[-1], { 'line': getline(lnum), 'children': [] })
    let previndent = indent
  endfor

  call sort(lines, Compare)

  fun! Flatten(lines, ...)
    let out = a:0 ? a:1 : []
    for line in a:lines
      call add(out, line.line)
      call Flatten(line.children, out)
    endfor
    return out
  endfun

  call setline(a:line1, Flatten(lines))
endfun
