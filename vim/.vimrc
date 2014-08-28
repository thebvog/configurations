" Author: Vladislav Belov
" Last update: 28.08.2014

" User interface
syntax on
set nocompatible
set scrolloff=3
colorscheme magic
set wrap
set linebreak
set mouse=a
set mousehide
set showcmd
set matchpairs+=<:>
set showmatch
set autoread
set t_Co=256
set confirm
set number

" Search
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Cursor line
set cursorline
hi CursorLine cterm=NONE ctermbg=8 guibg=8

" Status line
set statusline=%F>%{&fileencoding}>%Y
set statusline+=%=\ [%l:%v/%L,\ %p%%]
set statusline+=\ %{strftime(\"%d.%m.%Y\ %H:%M:%S\")}
hi StatusLine gui=reverse cterm=reverse ctermfg=4 ctermbg=7
set laststatus=2

" Highlight
set list
set listchars=tab:>-,trail:-
highlight SpellBad ctermfg=Black ctermbg=Red

" Backup
set backup
set title
set history=256
set undolevels=8192

" Tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set smartindent

" Auto complete
" TODO: add C/C++, Python, Haskell
set completeopt=menu

" Spelling
setlocal spell spelllang=en

" Key maps
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
nmap <F9> :make<cr>
imap <C-d> <esc>yypi
inoremap <C-space> <C-x><C-o>
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map <C-V>      "+gP
noremap <C-Z> u
inoremap <C-Z> <C-O>u
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" IAbbrev
iabbrev T TODO:

