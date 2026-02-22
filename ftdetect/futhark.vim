augroup futhark
  au!
  au BufRead,BufNewFile *.fut set filetype=futhark
  au BufRead,BufNewFile *.fut set includeexpr=v:fname.'.fut'
augroup END
