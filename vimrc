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
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ivalkeen/vim-ctrlp-tjump'
" https://github.com/klen/python-mode
" Plugin  'klen/python-mode'

" navegacion de ficheros
Plugin 'scrooloose/nerdtree'

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
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

" snippets para cientos de lenguajes
" https://github.com/honza/vim-snippets/tree/413b3507fb280aff90add9b1acbb3c49b2d6873d/snippets
" Es importante para consultar los triggers
" Plugin 'honza/vim-snippets'

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

" javascript
Plugin 'jelera/vim-javascript-syntax'


" autoformat with external tools 
Plugin 'Chiel92/vim-autoformat'
" install tidy for html format
" install nvm
" install js-beauty
Plugin 'stephpy/vim-php-cs-fixer'

" syntax checking 
" https://github.com/scrooloose/syntastic
Plugin 'scrooloose/syntastic'
" require php5-cli and phpcs
"
" apt-get install php5-cli 
" mkdir ~/bin
" cd ~/bin
" curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
" curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
"
" -- color scheme --
" Silversearch, like ack but faster ? 
" sudo apt-get install silversearcher-ag
" https://github.com/mileszs/ack.vim
Plugin 'mileszs/ack.vim'

" https://github.com/tomasr/molokai
Plugin 'jsenin/molokai'

" visual markers 
" https://github.com/kshenoy/vim-signature 
"
Plugin 'kshenoy/vim-signature' 


" autocomplete
" Plugin 'Valloric/YouCompleteMe'

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

" tambien funciona agregando set t_Co=256 antes del colorschema
set t_Co=256


" tecla leader la coma
let mapleader = ','

"para poder pegar sin que idente formato presionamos f12
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)


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

" usar control-t para cambiar al buffer anterior
nnoremap <C-S-T> :b#<CR>


" ==== ControlP ====
" con control+p lista los directorios y archivos que esten en ese directorio
" lo que pernece a un control de versiones que este proximo en nivel de
" directorios
" control+f te mueves entre las opciones
" control+t te lo abre un nuevo tab lo que tengas seleccionado
" control+y te crea el fichero con ese nombre y los directorios si lo has indicado
" control+p seleccionas nombre :linea te lo abre y va a esa linea
" control+x abre con split horizontal
" control+v abre con split vertical 
" f5 refresca la cache de ficheros
"
" ControlP permite user expresiones reguarles 
"
" Exclude files or directories using Vim's wildignore:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,node_modules,bower_components    " Linux/MacOSX

" let g:ctrlp_map = '<c-p>'
" CtrlPMixed offers a search for mru, buffer and files all together
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'
" maximum directory depth
let g:ctrlp_max_depth = 15



" ==== python-mode ==== 
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


"" vim autoformat "
"" autoformat using f3"
noremap <F3> :Autoformat<CR>
"" autoformat when save file"
"au BufWrite * :Autoformat

let g:formatdef_phpcsfixer = "'~/bin/php-cs-fixer fix -q -'"
let g:formatters_php = ['phpcsfixer']
let g:autoformat_verbosemode = 1


noremap <F4> :CtrlPFunky<CR>
noremap <F2> :NERDTreeToggle<CR>


"" sytastic recommended configuration
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

"" auto trim spaces 
autocmd BufWritePre *.php :%s/\s\+$//e

" silver searcher wit ack.vim plugin
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep --ignore=composer*'

" http://nikhgupta.com/code/using-vim-php-ide-exuberant-ctags-code-browsing/
set tags=~/.ctags;
augroup TagFileType
  autocmd!
  autocmd FileType * setl tags<
  autocmd FileType * exe 'setl tags+=~/.ctags/' . &filetype . '/*/tags'
augroup END

