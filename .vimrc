" Vundle Config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Other Plugins HERE

Plugin 'flazz/vim-colorschemes'
colorscheme Monokai

Plugin 'Valloric/YouCompleteMe'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Open NERDTree on start
" autocmd vimenter * NERDTree

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Map ctrl+n to toggle NERDTree open/close
:map <C-n> :NERDTreeToggle<CR>

Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on

" VIM Config
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80

