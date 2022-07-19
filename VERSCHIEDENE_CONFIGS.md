# verschiedene Konfigurationsdatein ausprobieren

Man erstelle einen Testordner, z.B. `~/test`. Dort hinein kommt eine `test.vim` mit folgendem Inhalt

```vim
" Try not to execute anything in your own config
set runtimepath-=~/.config/nvim
set packpath-=~/.config/nvim

" Add path to the new config
set runtimepath+=~/test
" Source entrypoint of new config
source ~/test/init.lua
```

Diese Datei entfernt den `runtimepath` und `packpath`, damit keine existierenden Plugins etc. genutzt werden.

Mit `neovim -u ~/test/test.vim` kann man diese Konfiguration öffnen. **Nachdem** die Paths korrigiert wurden, wird die `~/test/init.lua` geladen; hier kann man nun eine neue Konfiguration ausprobieren!
