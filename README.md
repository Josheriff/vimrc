## About
This is my vim config forked from a teammete and changed

## Usufull for starting:

```
CTRL + X == NERDTree
   CTRL + S == Open file in left split of the workspace   
   ENTER == Open file in right split or full screen
CTRL + P == Look for file
CTRL + WW == Change "tab"

```

### Install
``` shell
 git clone https://github.com/jsenin/vimrc/ ~/.vim
 cp ~/.vim/vimrc ~/.vimrc
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
 vim +PluginInstall
```

### requirements
```
apt-get install editorconfig
```
Debian vim, provide multiple vim packages with different supports enabled inside each one.
I'm using vim-nox for vim python support and vim-gtk for clipboard support

```
apt-get install vim vim-nox vim-gtk
```

### extras
Silver search, search quickly inside your project files https://github.com/ggreer/the_silver_searcher
```
apt-get install silversearcher-ag
```

### Install formaters

```
npm -g install js-beautify
```
