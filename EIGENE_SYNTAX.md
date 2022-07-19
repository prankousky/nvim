# Beispiel für eigene Syntax

1. erstelle Datei

```txt
2022-07-15 (Friday)
+ Meet Friend
- Finish marking lab
2022-07-14 (Thursday)
+ Laundry
2022-07-13 (Wednesday)
+ Vacuum
+ Go to Bank
```

2. `~/.config/nvim/syntax/test_Calendar.vim`

```vim
if exists('b:current_syntax')
  finish
endif

let s:cpo_save = &cpoptions
set cpoptions&vim

syntax match myCalendarDate /^\d\+-\d\+-\d\+/
syntax match myCalendarUnfinishedTask /^\s*-.*/
syntax match myCalendarFinishedTask /^\s*+.*/

highlight default link myCalendarDate Statement
highlight default link myCalendarFinishedTask Question
highlight default link myCalendarUnfinishedTask ErrorMsg

let b:current_syntax = 'myCalendar'

let &cpoptions = s:cpo_save
unlet! s:cpo_save
```

3. `~/.config/nvim/syntax/test_Calendar.vim`

```vim
autocmd BufRead,BufNewFile ~/Documents/calendar/*.txt set filetype=test_Calendar
```
