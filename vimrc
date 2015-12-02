" add source .vim/vimrc to ~/.vimrc or do a symlink
set nocompatible
filetype off

" Vundle start plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Plugin para abrir ficheros de forma rápida con control+p
" permite tener una lista de mru -> most recent used
Plugin 'ctrlpvim/ctrlp.vim'

" https://github.com/klen/python-mode
Plugin  'klen/python-mode'

" https://github.com/bling/vim-airline
Plugin 'bling/vim-airline'

" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

"editorconfig/editorconfig-vim
"compatibilidad con otros ids con editorconfig
Plugin 'editorconfig/editorconfig-vim'

" easymotiion para movere por los ficheros buscando combinaciones de teclas
" se lanza con leader leader
Plugin 'easymotion/vim-easymotion'

" autocompleta con el tab!
" https://github.com/ervandew/supertab
" cuando comenzamos a escribir y le damos al tab aparece un cuadro de
" sugerencias, se puede mover con flechas con ctrl-p ctrl-n
" si es repetir una linea completa con ctrl+x + ctrl-l te muestra lineas
" completas
" https://github.com/ervandew/supertab/blob/master/plugin/supertab.vim#L151
" duda si completa solo con cosas de los buffers abiertos o de todos  
Plugin  'ervandew/supertab'

" https://github.com/jiangmiao/auto-pairs
" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" meter snippets con 
" https://github.com/garbas/vim-snipmate
" este esta mantenido
" snipmate required vim-addon-mw-utils tlib_vim y vim-snipmate
" snipmate viene sin snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" snippets para cientos de lenguajes
" https://github.com/honza/vim-snippets/tree/413b3507fb280aff90add9b1acbb3c49b2d6873d/snippets
" Es importante para consultar los triggers
Plugin 'honza/vim-snippets'

" https://github.com/alvan/vim-closetag
" autocierra tags de html
Plugin 'alvan/vim-closetag'

" https://github.com/airblade/vim-gitgutter
" muestra las lineas en las que un fichero ha cambiado en comparacion con la
" version anterior de git 
Plugin 'airblade/vim-gitgutter'

" /vim-scripts/upAndDown
" https://github.com/vim-scripts/upAndDown
Plugin 'jsenin/upAndDown'



" -- color scheme --
"
" Solarized color scheme for better visualization
" https://github.com/altercation/vim-colors-solarized
Plugin 'altercation/vim-colors-solarized'

" https://github.com/tomasr/molokai
" thema mas molon 
Plugin 'tomasr/molokai'


" All of your Plugins must be added before the following line
call vundle#end() " required

" start filetype
filetype plugin indent on   " Automatically detect file types.
syntax on                   " Syntax highlighting
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8

set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set ignorecase     "ignora las mayusculas en las busquedas


" controlp custom
" 
" Exclude files or directories using Vim's wildignore:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*     " Linux/MacOSX

" Change the default mapping and the default command to invoke CtrlP:
" f5 refresh cache when controlp is open
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" control f para cambiar entre modos de controlp
" realiza la busqueda de expresion regular con distintos grupos

" python-mode
" quitar el autofolding, me muestra todo el fichero con foldeado y no me gusta
let g:pymode_folding = 0


" airline
" sino pones laststatus no se muestra la linea de airline
set laststatus=2
" si airline se ve sin color hay que leer esto
" http://vim.wikia.com/wiki/256_colors_in_vim
" puede ser que sea necesario que tengas que tener esto
" en tu bashrc
" export TERM='xterm-256color'
" testealo usando este scrip
" https://raw.githubusercontent.com/incitat/eran-dotfiles/master/bin/terminalcolors.py
" tiene que salir con colores bonitos O_O
"
" tambien funciona agregando set t_Co=256 antes del colorschema
set t_Co=256


" tecla leader la coma
let mapleader = ','
" easy motion permite guscar en el documento de forma muy senciall
" reemplaza a la busqueda tradiciona con la barra
" metes texto, das al enter y te deja resaltado la letra que tienes que pulsar
" para ir a ese texto
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" borra los espacios al final de ficheros de estos archivos
"autocmd FileType *,php,javascript,python,xml,perl,sql autocmd BufWritePre <buffer> call StripTrailingWhitespace()
"autocmd FileType * autocmd BufWritePre <buffer> call StripTrailingWhitespace()
" Desactivo esto en favor de let g:pymode_trim_whitespaces = 1
"

"strip whitespace {
    function! StripTrailingWhitespace()
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        %s/\s\+$//e
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    " }
    "
    "
"para poder pegar sin que idente formato presionamos f12
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)


" python-mode
"
" borra los trailing espaces al guardar
let g:pymode_trim_whitespaces = 1
" valores python , python3 o disabled
let g:pymode_python = 'python'
" desactivar la ventana de doc que da mucho la lata
let g:pymode_doc = 0

" desactiva la deteccion automatica de virtualenv
" soluciona el warning de activate_this.pỳ
let g:pymode_virtualenv = 0

" evitar usar cursores en vim
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" ver numeros de linea 
set number

" fix Explore :E not working I don't know why
" the e . command is the same that :E 
command! E Explore


" setear molokai color scheme
colorscheme molokai

" copiar al clipboarde sistema
vmap <C-S-C> "+y<CR>"
