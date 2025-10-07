"
" Custom filetype detection. This will override defaults.
" See :help new-filetype for docs.
"

au BufRead,BufNewFile *.in set filetype=text
au BufRead,BufNewFile *.out set filetype=text

au BufRead,BufNewFile *.sqlm set filetype=sql
au BufRead,BufNewFile *.sqlt set filetype=sql
