if !exists(":YankAbsolute")
  command YankAbsolute :let @+ = expand('%:p')
endif

if !exists(":YankCode")
  command YankCode :let @+ = expand('%') . ':' . line('.')
endif

if !exists(":YankName")
  command YankName :let @+ = expand('%:t')
endif

if !exists(":YankRelative")
  command YankRelative :let @+ = expand('%')
endif
