filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

set ruler
set number
set hlsearch
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
"
"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab
"set paste
syntax on

if $TERM == "xterm-256color"
      set t_Co=256
endif
"colorscheme 256-gray
"PRESENTATIONS
"colorscheme delek
colorscheme molokai

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

" Markdown (tab width 4 chr, wrap at 79th)
autocmd FileType markdown set sw=4
autocmd FileType markdown set ts=4
autocmd FileType markdown set sts=4
autocmd FileType markdown set textwidth=79

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd BufRead,BufNewFile *.tmp,*.tps set filetype=html
autocmd FileType ejs set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufRead,BufNewFile *.less,*.sas set filetype=css

autocmd BufNewFile,BufRead *.ejs set filetype=html

"JSBeautify
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


let g:SuperTabDefaultCompletionType = "context"
autocmd VimEnter * NERDTree
let NERDTreeIgnore= ['^CVS$']
autocmd VimEnter * wincmd p

map <s-left> : tabprevious<CR>
map <s-right> : tabnext<CR>


" WHITESPACE
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

set backupdir=~/tmp
set noswapfile
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"Markdown to HTML  
"nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>  
"</cr></leader> 

"Markdown to HTML  
map md :%!/Users/thurmda/bin/Markdown.pl --html4tags <cr>  

"https://github.com/acook/config/blob/master/dotfiles/.vimrc#L276
" make mouse scrolling work in vim!!!
map <M-Esc>[62~ <ScrollWheelUp>
map <M-Esc>[63~ <ScrollWheelDown>
map <M-Esc>[64~ <S-ScrollWheelUp>
map <M-Esc>[65~ <S-ScrollWheelDown>
map! <M-Esc>[62~ <ScrollWheelUp>
map! <M-Esc>[63~ <ScrollWheelDown>
map! <M-Esc>[64~ <S-ScrollWheelUp>
map! <M-Esc>[65~ <S-ScrollWheelDown>

" make keypad work in vim with iTerm on OS X!
map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <kPlus> +
map <Esc>OS -
map! <Esc>Oq 1
map! <Esc>Or 2
map! <Esc>Os 3
map! <Esc>Ot 4
map! <Esc>Ou 5
map! <Esc>Ov 6
map! <Esc>Ow 7
map! <Esc>Ox 8
map! <Esc>Oy 9
map! <Esc>Op 0
map! <Esc>On .
map! <Esc>OQ /
map! <Esc>OR *
map! <kPlus> +
map! <Esc>OS -

"vim-jsbeautify
".vimrc

map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
