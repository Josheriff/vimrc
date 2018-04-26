## Install this configuration (Vundle included as plugin manager)
``` shell
 git clone https://github.com/Josheriff/vimrc.git ~/.vim
 cp ~/.vim/vimrc ~/.vimrc
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
 vim +PluginInstall
```

## NEED TO DO TO WORK ON TMUX OR TMATE GOOD COLORS :D

```
need to add in the .bash_profile:

[[ $TMUX = "" ]] && export TERM="xterm-256color"

in .tmux.conf:

set -g default-terminal "xterm-256color"
```
### requirements

```
apt-get install vim vim-nox vim-gtk
```

### extras
Silver search, search quickly inside your project files https://github.com/ggreer/the_silver_searcher
```
apt-get install silversearcher-ag
```


### CTAGS or how to jump to definitions (classes)

### Need to install Exuberent tags (CTAGS) (look for instructions)

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


# For cool fonts and icons:
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraMono

Need to be installed in each operating system and configured to be shown in the terminal

To be used in vim and terminal, you need to download the _mono_ substringed fonts



# for MAC install virtualenv and virtualenv wrapper is not just install


```
$ pip install virtualenv
$ pip install virtualenvwrapper
```

Next, create a folder that will contain all your virtual environments:

```
$ mkdir ~/.virtualenvs
```

Open your .bashrc file and add:

```
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
```



## Usufull for starting:

```
CTRL + X == NERDTree
   CTRL + S == Open file in left split of the workspace
   ENTER == Open file in right split or full screen
CTRL + P == Look for file
CTRL + WW == Change "tab"

```


### Install formaters

```
npm -g install js-beautify
```
