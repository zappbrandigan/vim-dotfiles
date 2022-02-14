set nocompatible
let mapleader = "-"

filetype plugin indent on
syntax enable

set number
set cursorline
set cursorcolumn
set shiftwidth=2
set tabstop=2
set expandtab
set nobackup

set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode

set showmatch
set hlsearch

set wildmenu
set wildmode=list:longest
set wildignore=*.dox,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set foldenable
set foldmethod=syntax
set backspace=indent,eol,start

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" add quotes to a word in normal mode
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" quote visual selection
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

" map new escape from insert mode
inoremap jk <esc>
tnoremap <esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
nnoremap <silent> <C-n> :call OpenTerminal()<CR>

function! OpenTerminal()
    exec "terminal"
    exec "wincmd J"
    resize 15
endfunction


" NERDTree mappings and configs
nnoremap <silent> <leader>n :NERDTreeFocus<CR>
nnoremap <silent> <F4> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = 1
"

" vim-airline configs
let g:airline_theme='minimalist'                                                                                                             
let g:airline_powerline_fonts = 1                                                                                                         
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD                                                 
let g:airline#extensions#tabline#enabled=1


" Colorscheme
colorscheme sonokai

" Testing sym link
