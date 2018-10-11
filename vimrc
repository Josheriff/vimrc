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

" working directory always the root of the project
Plugin 'airblade/vim-rooter'

" See the colors down
Plugin 'bling/vim-airline'

" Auto keys () {} etc...
Plugin 'jiangmiao/auto-pairs'

" Comment Plugin
Plugin 'scrooloose/nerdcommenter'

"HTML snipshet
Plugin 'mattn/emmet-vim'

"AutoComplete
Plugin 'lifepillar/vim-mucomplete'

"Linter after save
Plugin 'vim-syntastic/syntastic'

" Snippet engine
Plugin 'SirVer/ultisnips'

" My personal Snippets
Plugin 'Josheriff/vimsnippets'

" Git :D
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'

" JSX syntax
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Variables colorized
Plugin 'jsenin/semantic-highlight.vim'

" Nova Scheme
Plugin 'trevordmiller/nova-vim'

" 16 color scheme
Plugin 'noahfrederick/vim-noctu'

" Icons and fanzy fonts
Plugin 'ryanoasis/vim-devicons'
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
let mapleader = ","
let macvim_skip_colorscheme=1
colorscheme nova
"colorscheme desert

" Activate indentation
filetype plugin indent on

"clipboard depending on operating system
if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set clipboard=unnamed
    else
        set clipboard=unnamedplus
    endif
endif

"background hack for tmate
set t_ut=

"Search all
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
:set hlsearch

" Emmet to CTRL+e
let g:user_emmet_expandabbr_key='<C-e>'

"Autocomplete configurations
set completeopt+=menuone
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion

"NERDCOMMENTER OPTIONS:
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" semantic filetype python
let g:semanticEnableFileTypes = ['python','javascript']

"Activate JSX sintax in JS files
let g:jsx_ext_required = 0

" CTRL+n to snippets
let g:UltiSnipsExpandTrigger='<C-n>'

" Configure where the snippets are
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vimsnippets/UltiSnips']

" Open the filesystem tree with Ctrl+X
map <C-x> :NERDTreeToggle<CR>

" Git Status, use - to add and cc to commit
map <C-g> :Gstatus<CR>
map <C-f> :grep! -R <cword> .<CR>
map <C-k> :ProjSearch<space>

" Git log in CTRL+l
map <C-l> :GV<CR>

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
let g:ctrlp_working_path_mode = 'r'

" airline config
set laststatus=2

" Default golang formater
let g:go_fmt_command = "goimports"

" Configuracion para que el grep siempre se abra en una pestaña
augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow|tabnew|b#
    autocmd QuickFixCmdPost l*    lwindow|tabnew|b#
augroup END

" commands
command -nargs=+ ProjSearch grep! -R <args> .
