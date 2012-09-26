call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

set ruler 
set number

"
"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab
"set paste
syntax on

colo desert
"Filetype
set filetype=on
filetype plugin on
filetype indent on
set ai
set ts=4
set sts=4
set et
set sw=4
set textwidth=79

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
" Python (tab width 4 chr, wrap at 79th char)
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
autocmd FileType python set textwidth=79
" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
autocmd FileType css set textwidth=79
" JavaScript (tab width 4 chr, wrap at 79th)
autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4
autocmd FileType javascript set textwidth=79
" PHP (tab width 4 chr, wrap at 79th)
autocmd FileType php set sw=4
autocmd FileType php set ts=4
autocmd FileType php set sts=4
autocmd FileType php set textwidth=79



autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
