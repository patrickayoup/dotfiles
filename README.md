# dotfiles

## Install ZSH
    sudo apt-get install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Install Vundle

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Install Vim Plugins

    :PluginInstall

## Install Vim Theme

    $ mkdir .vim/colors
    $ cd .vim/colors
    $ wget https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/Monokai.vim

## Install YouCompleteMe

    $ sudo apt install build-essential cmake python3-dev
    $ cd ~/.vim/bundle/YouCompleteMe
    $ python3 install.py --clangd-completer

## Install pyenv

    $ curl https://pyenv.run | bash

### Install pyenv-virtualenv

    $ git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

### Install pyenv Build Dependencies

    $ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
      libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
      xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

