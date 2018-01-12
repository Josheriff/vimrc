# CTAGS or how to jump to definitions (classes)

Need to install Exuberent tags (CTAGS)

add in home folder .ctags file and write this:

```
--recurse=yes
--exclude=.git
--exclude=vendor/*
--exclude=node_modules/*
--exclude=db/*
--exclude=log/*
```

CTRL+j will jump to the definition of the class
CTRL+w will go back

## NEED TO DO TO WORK ON TMUX OR TMATE GOOD COLORS :D

```
need to add in the .bash_profile:

[[ $TMUX = "" ]] && export TERM="xterm-256color"

in .tmux.conf:

set -g default-terminal "xterm-256color"
```

## About
This is my vim config forked from a teammate (www.github.com/jsenin) and changed

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
 git clone https://github.com/Josheriff/vimrc.git ~/.vim
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
