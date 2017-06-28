" Tab settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

color molokai

" ui
syntax on
set autoindent
set showmatch
set showmode
set number
set cursorline
set splitbelow
set splitright

" Set leader
let mapleader=","

" NERDTree
autocmd vimenter * NERDTree   "Open NERDTree automatically when starting vim
autocmd vimenter * wincmd p   " ... but focus the file, not the tree
execute pathogen#infect()
call pathogen#helptags()
map <C-n> :NERDTreeToggle<CR>
" toggle NERDTree
map <F2> :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeToggle<CR>
" reveal current file in NERDTree
nmap <leader>n :NERDTreeFind<CR>
" allow quit via a single keypress
map Q :qa<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Buffer faster buffer switching
set wildchar=<Tab> wildmenu wildmode=full
nnoremap <C-Tab> <C-^>

" leader d to delete without replacing copy register etc
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

" Language specific settigs
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
augroup END
