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

" Linter
Plugin 'w0rp/ale'

" JSX syntax
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Variables colorized
Plugin 'jsenin/semantic-highlight.vim'

" Nova Scheme
Plugin 'trevordmiller/nova-vim'

" 16 color scheme
Plugin 'noahfrederick/vim-noctu'

call vundle#end()

"Syntax coloring and filetype detection
"utf encoding, Show line Numbers
"not copy numbers with mouse
"indentation
"activating shared clipboard with OS

syntax on
set encoding=utf-8
set number
set mouse+=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set clipboard=unnamedplus
set backspace=indent,eol,start
let macvim_skip_colorscheme=1
colorscheme nova
"colorscheme noctu

"background hack for tmate
set t_ut=

filetype plugin indent on

let g:semanticEnableFileTypes = ['python']

"Activate JSX sintax in JS files
let g:jsx_ext_required = 0

"Navigate tabs Ctrl+n
map <C-N> :tabnext<CR>

" Open the filesystem tree with Ctrl+X
map <C-x> :NERDTreeToggle<CR>

"CTRL+j to jump 50 lines down CTRL+d still working
"CTRL+K to jump 50 lines up
:map <C-k> <C-u>
:map <C-j> <C-d>

" Remove all trailing spaces on save
function! Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" Configuración del Ctrl+P
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'
let g:ctrlp_max_depth = 15
let g:ctrlp_max_history = 5

" airline config
set laststatus=2

" Default golang formater
let g:go_fmt_command = "goimports"

" ALE configuration
let g:ale_linters = {
\   'python': ['pylint'],
\}
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '??'
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 0
