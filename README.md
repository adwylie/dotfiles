## Dotfiles

Basic setup:
* Get the correct version & build of Vim (1)
* Clone the repositories & set up links

        git clone https://github.com/awylie/dotfiles.git ~/dotfiles
        cd ~ && ln -s dotfiles/.vimrc .vimrc
        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        git clone --recursive https://github.com/Valloric/YouCompleteMe.git \
            ~/.vim/bundle/YouCompleteMe


* [Build YouCompleteMe](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation)
* [Install powerline fonts](https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation) (2)
* [Install gnome terminal colors](https://github.com/sigurdga/gnome-terminal-colors-solarized#installation-and-usage)

* Install the vim bundles (3)

        vim +PluginInstall +qall

Notes:

1.  [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) requires Vim
    7.3.584 (or greater) with python2 support.

2.  Current configuration requires
    [powerline fonts](https://powerline.readthedocs.org/en/latest/installation.html#installation-on-various-platforms)
    for the [vim-airline](https://github.com/bling/vim-airline) bundle.

3.  On Mac OS X I've installed MacVim with brew and aliased
    `alias vim='mvim -v'`.  All other steps work without changes.
