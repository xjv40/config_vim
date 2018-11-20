set nocompatible
call pathogen#infect()
"autocmd vimenter * NERDTree

let mapleader = ","
let g:ctrlp_map = '<leader>C'

let g:ackprg="ack -H --nocolor --nogroup --column"
let g:ctrlp_map = '<leader>c'

" -- Affichage

set title

set number
set ruler
set wrap

set scrolloff=3

set background=dark
colorscheme "Tomorrow-Night-Bright"
set antialias

" -- Recherche
set ignorecase
set smartcase

set hlsearch

set incsearch

set guifont=Consolas:h8

" -- Beep
set visualbell
set noerrorbells

" -- Active le comportement habituel de la touche retour arrière
set backspace=indent,eol,start

set hidden

set syntax

filetype on
filetype plugin on
filetype indent on
au FileType c setl ofu=ccomplete#CompleteCpp

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set shiftround
set showmode
set showcmd
:imap ;; <Esc>
:map ;; <Esc>
nmap <leader>j mA:Ack<space>
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

" -- Permet d'activer ou de désactiver à volonté la surbrillance des
"  caractères lors d'une recherche
nnoremap <leader>hl :set hlsearch!\|set hlsearch?<cr>
