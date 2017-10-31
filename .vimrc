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
Plugin  'klen/python-mode'

" navegacion de ficheros
Plugin 'scrooloose/nerdtree'

" https://github.com/bling/vim-airline
Plugin 'bling/vim-airline'

" Supuestamente linea de comandos, comentado
" por no saber muy bien como usarlo
" https://github.com/tpope/vim-fugitive
" Plugin 'tpope/vim-fugitive'

"editorconfig/editorconfig-vim
"compatibilidad con otros ids con editorconfig
"Plugin 'editorconfig/editorconfig-vim'

" easymotiion para movere por los ficheros buscando combinaciones de teclas

"Plugin 'easymotion/vim-easymotion'


" https://github.com/jiangmiao/auto-pairs
" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" autocomplete con cache
" sustiutye a supertab o youcompleteme
" necesita de neosnippets y neosnippet-snippets con los snips
" If you have installed the |vimproc| plugin, neocomplete creates the caches asynchronously
" https://github.com/Shougo/context_filetype.vim/blob/master/doc/context_filetype.txt
" ctags https://github.com/Shougo/neoinclude.vim/blob/master/doc/neoinclude.txt
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neopairs.vim'
" https://github.com/alvan/vim-closetag
" autocierra tags de html
"Plugin 'alvan/vim-closetag'

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

" https://github.com/w0rp/ale
" Asynchronous Lint Engine Build Status

" syntax checking 
" https://github.com/scrooloose/syntastic
" Plugin 'scrooloose/syntastic'
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
Plugin 'kshenoy/vim-signature' 

" colorize vars methods classes ...
Plugin 'jsenin/semantic-highlight.vim'


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
set expandtab                   " Tabs are spaces, not tabs
set tabstop=2                  " An indentation every four columns
set softtabstop=2              " Let backspace delete indent
set shiftwidth=2               " Use indents of 4 spaces
set ignorecase     "ignora las mayusculas en las busquedas
set hlsearch     "ilumina los resultados de una busqueda
set incsearch

set cursorline

set completeopt-=preview "disable de buffer used for help,etc...

"
" tambien funciona agregando set t_Co=256 antes del colorschema
set t_Co=256


" tecla leader la coma
let mapleader = ','

"para poder pegar sin que idente formato presionamos f12
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)


" evitar usar cursores en vim
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>


" ver numeros de linea 
set number

" fix Explore :E not working I don't know why
" the e . command is the same that :E 
command! E Explore


" setear molokai color scheme
colorscheme molokai

" copiar al clipboarde sistema
" require la extesion +clipboard compilada en vim
" se puede instalar con apt-get install vim-gtk
vmap <C-S-C> "+y<CR>"


" ==== ControlP ====
" con control+p lista los directorios y archivos que esten en ese directorio
" lo que pernece a un control de versiones que este proximo en nivel de
" directorios
" control+f te mueves entre las opciones
" control+r activa/desactiva la busqueda por expresion regular
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,node_modules,bower_components,*.pyc   " Linux/MacOSX

" let g:ctrlp_map = '<c-p>'
" CtrlPMixed offers a search for mru, buffer and files all together
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'
" maximum directory depth
let g:ctrlp_max_depth = 15

" The maximum number of input strings you want CtrlP to remember
" 5 it's enough for me 
let g:ctrlp_max_history = 5




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


" python-mode
"
" ==== python-mode ==== 
" quitar el autofolding, me muestra todo el fichero con foldeado y no me gusta
let g:pymode_folding = 0

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

let g:formatters_php = ['phpcsfixer']
let g:formatdef_phpcsfixer = "'~/bin/php-cs-fixer fix -q -'"
let g:formatters_python = ['autopep8']
let g:autoformat_verbosemode = 1


noremap <F4> :CtrlPFunky<CR>
noremap <F2> :NERDTreeToggle<CR>
noremap <c-X> :NERDTreeToggle<CR>
"" next buffer file 
"" obsolete, collision
"" noremap <C-s-b> :CtrlPBuffer<CR>

"" syntastic 
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

"" "let g:syntastic_python_checkers=['flake8','pep8','pycodestyle','pyflakes',' python']
let g:syntastic_python_checkers=['flake8']
"" "let g:syntastic_python_flake8_exec='flake8 . '
"" "let g:syntastic_debug = 1

"" auto trim spaces 
autocmd BufWritePre *.php :%s/\s\+$//e

" silver searcher wit ack.vim plugin
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep --ignore=composer*'


""" autopairs fly mode 
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '¶'
let g:AutoPairsShortcutFastWrap= 'ł'


"" moving across splits 
"" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
"" control w + x -> swap bufffers order
"" control w + r -> rotate buffer"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" swap words, usseful for swapping params in a function call 
"" http://vim.wikia.com/wiki/Swapping_characters,_words_and_line
"" nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>

"" http://vim.wikia.com/wiki/Using_tab_pages
"" nnoremap <C-Left> :tabprevious<CR>
"" nnoremap <C-Right> :tabnext<CR>
"" nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"" nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

set tags=./tags,./../tags,./../../tags,./../../../tags,tags

"" remapings para saltar al tag por que gnome captura algunos conjuntos de
"" pulsaciones y los gestiona el window manager
noremap <leader>t :tjump<cr>
noremap <leader>T :tselect<cr>


"" semantic color
"" cambia con leader s ( ,s )
"" https://github.com/jaxbot/semantic-highlight.vim
let g:semanticEnableFileTypes = ['python']
nnoremap <Leader>s :SemanticHighlightToggle<cr>


" closetag autocierra tags para los ficheros con extensioens
let g:closetag_filenames = "*.html,*.js"



" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"  

let g:neocomplete#enable_at_startup = 1
"let g:neosnippet#enable_snipmate_compatibility = 1
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" delete back word with control + d 
nmap <c-b> db
imap <c-b> <ESC>db


" easy motion permite guscar en el documento de forma muy senciall
" reemplaza a la busqueda tradiciona con la barra
" metes texto, das al enter y te deja resaltado la letra que tienes que pulsar
" para ir a ese texto
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)


" <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ neocomplete#start_manual_complete()
  function! s:check_back_space() "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}


"imap <TAB>     <Plug>(neosnippet_expand_or_jump)
"smap <TAB>     <Plug>(neosnippet_expand_or_jump)
"xmap <TAB>     <Plug>(neosnippet_expand_target)
"map <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"

" Indentation by filetype
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype css setlocal tabstop=2 softtabstop=2 shiftwidth=2