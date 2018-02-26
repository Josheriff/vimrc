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

"HTML snipshet
Plugin 'mattn/emmet-vim'

" Auto C-tags misc necessary
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" C-tags navigator
Plugin 'majutsushi/tagbar'

" Auto tags generator on save
Plugin 'ludovicchabant/vim-gutentags'
" Ag, search in the project
Plugin 'mileszs/ack.vim'

"AutoComplete
Plugin 'ervandew/supertab'

" Linter
Plugin 'w0rp/ale'

" Snippet engine
Plugin 'SirVer/ultisnips'

" My personal Snippets
Plugin 'Josheriff/vimsnippets'

" Git :D
Plugin 'tpope/vim-fugitive'

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
set clipboard=unnamed
set backspace=indent,eol,start
set splitbelow
set splitright
let macvim_skip_colorscheme=1
colorscheme nova
"colorscheme desert

"background hack for tmate
set t_ut=

"Search all
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
:set hlsearch

"asyncronous easy-tags
":let g:easytags_always_enabled = 1
:let g:easytags_async = 1
:let g:easytags_auto_highlight=0

"CTRL+j jump to definition thanks to ctags
"CTRL+K jump back where you where coming from ctags
:map <C-k> <C-t>
:map <C-j> <C-]>

"Tag navigator
nmap <F8> :TagbarToggle<CR>

"Look for in CTRL+f
map <C-f> :Ack

" Emmet to CTRL+e
let g:user_emmet_expandabbr_key='<C-e>'

" Activate indentation
filetype plugin indent on

" semantic filetype python
let g:semanticEnableFileTypes = ['python','javascript']

"Activate JSX sintax in JS files
let g:jsx_ext_required = 0

" CTRL+n to snippets
let g:UltiSnipsExpandTrigger='<C-n>'

" Open the filesystem tree with Ctrl+X
map <C-x> :NERDTreeToggle<CR>

" Git Status, use - to add and cc to commit
map <C-g> :Gstatus

" make ag default searcher for ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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
let g:ctrlp_working_path_mode = 0

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
