filetype plugin on
set paste
set nocompatible
set number
syntax on
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set smarttab
autocmd BufRead *.py map <buffer> <S-e> :w<CR>:!/usr/bin/env python %
autocmd BufRead *.py set expandtab
autocmd BufRead *.py set autoindent
autocmd BufRead *.py highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead *.py match BadWhitespace /^\t\+/
autocmd BufRead *.py match BadWhitespace /\s\+$/

autocmd BufRead *.js highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead *.js match BadWhitespace /^\t\+/
autocmd BufRead *.js match BadWhitespace /\s\+$/

autocmd BufRead *.html highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead *.html match BadWhitespace /^\t\+/
autocmd BufRead *.html match BadWhitespace /\s\+$/

autocmd BufRead *.cpp set autoindent 
autocmd BufRead *.h set autoindent 

autocmd BufRead *.md syntax=markdown
highlight NobreakSpace ctermbg=red guibg=red
match NobreakSpace / /

autocmd BufRead,BufNewFile *.twig set filetype=htmljinja

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set expandtab
set smartindent


"the status bar is always displayed

set laststatus=2 
if has("statusline")
    set statusline=%<%f%h%m%r%=%l,%c\ %P  
elseif has("cmdline_info")
    set ruler " display cursor position
endif

"using TAB will complete as much as possible and other tab will display 
" one by one the other possibility
set wildmode=longest,full 

"I've never really used them 
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

" in order to use the mouse
set mouse=a
  
set autochdir
"
set showcmd


"let g:ycm_key_list_select_completion = ['\<TAB>', '<Down>']

let g:clang_library_path = "/usr/lib/"
" syntastic
"let g:syntastic_auto_loc_list=1
""let g:syntastic_check_on_open=1
"let g:syntastic_disabled_filetypes=['html']
"let g:syntastic_enable_signs=1

colorscheme torte

let g:syntastic_aggregate_errors = 1

execute pathogen#infect()
