" The following lines are required by vundle vim plugin manager

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All plugins should be placed here
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'fatih/vim-go'

" Plugin para abrir ficheros de forma rápida con control+p
" permite tener una lista de mru -> most recent used

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ivalkeen/vim-ctrlp-tjump'

" See the colors down
Plugin 'bling/vim-airline'

" Auto keys () {} etc...
Plugin 'jiangmiao/auto-pairs'


call vundle#end()

" Syntax coloring and filetype detection
syntax on
filetype plugin indent on

" utf-8 encoding
set encoding=utf-8

" Show line numbers
set number

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent

" Open the filesystem tree with Ctrl+X
map <C-x> :NERDTreeToggle<CR>

" copiar al clipboarde sistema
" require la extesion +clipboard compilada en vim


vnoremap <C-C> "+yZ
map <C-V>       "+gP"

"" Configuración del Ctrl+P

let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'
" maximum directory depth
let g:ctrlp_max_depth = 15

" The maximum number of input strings you want CtrlP to remember
" 5 it's enough for me
let g:ctrlp_max_history = 5

"Copy CTRL+D TO CTRL+J
:map <C-k> <C-u>
:map <C-j> <C-d>

" Map Ctrl + S to save in any mode
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


" airline
" sino pones laststatus no se muestra la linea de airline
set laststatus=2

" Default golang formater
let g:go_fmt_command = "goimports"

" Remove all trailing spaces on save
" http://vimcasts.org/episodes/tidying-whitespace
function! Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")
