set nu		" Show line numbers
set noswapfile
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set hlsearch
set smartindent

au BufWritePost *.tex silent execute '!pdflatex <afile>' | redraw!
autocmd FileType make setlocal noexpandtab
hi Search cterm=NONE ctermfg=black ctermbg=yellow

set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

hi MatchParen cterm=none ctermbg=yellow ctermfg=black
filetype on
syntax on
set cursorline
hi CursorLine   cterm=bold ctermbg=black ctermfg=white
