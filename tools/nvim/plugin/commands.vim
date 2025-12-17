if !exists(":YankAbsolutePath")
  command YankAbsolutePath :let @+ = expand('%:p')
endif

if !exists(":YankCodePoint")
  command YankCodePoint :let @+ = expand('%') . ':' . line('.')
endif

if !exists(":YankFileName")
  command YankFileName :let @+ = expand('%:t')
endif

if !exists(":YankRelativePath")
  command YankRelativePath :let @+ = expand('%')
endif

if !exists(":YankFileContent")
  command YankFileContent :%y +
endif
