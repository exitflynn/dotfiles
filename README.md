# Setting up Plugin Manager (vim plug) and YouCompleteMe plugin for vim

```
mkdir ~/.vim/undodir -p
```

# Install vim plug:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

(Already in .vimrc) Add the following starting and beginning lines with the plugins in between:
```
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'

call plug#end()
```

And then :PlugInstall

## Installing YouCompleteMe

```
cd ~/.vim/plugged/YouCompleteMe
./install.py --ts-completer
```


