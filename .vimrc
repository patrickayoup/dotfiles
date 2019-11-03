" Vundle Config
"""""""""""""""""""""""""""""""
"" INSTALL VUNDLE
"" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
""
"" INSALL PLUGINS
"" :PluginInstall
"""""""""""""""""""""""""""""""
set nocompatible
filetype off

" To update plugins :PluginInstall
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Other Plugins HERE

" vim-colorschemes
"""""""""""""""""""""""""""""""
"" INSTALL COLOR SCHEME
"" mkdir .vim/colors
"" cd .vim/colors
"" wget https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/Monokai.vim
Plugin 'flazz/vim-colorschemes'
colorscheme Monokai

" YouCompleteMe
"""""""""""""""""""""""""""""""
"" INSTALL YCM CORE
"" sudo apt install build-essential cmake python3-dev
"" cd ~/.vim/bundle/YouCompleteMe
"" python3 install.py --clangd-completer
Plugin 'Valloric/YouCompleteMe'

" NERDTree
"""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'

" NERDTree UI Enhancements
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Open NERDTree on start
" autocmd vimenter * NERDTree

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Hide files matching patterns
let NERDTreeIgnore = ['\.pyc$']

" Close NERDTree when a file is opened
let NERDTreeQuitOnOpen=1

" Close NERDTree if it's the last window open on a tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Map ctrl+n to toggle NERDTree open/close
:map <C-n> :NERDTreeToggle<CR>

Plugin 'Xuyuanp/nerdtree-git-plugin'

" UltiSnips
"""""""""""""""""""""""""""""""
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

" ALE
"""""""""""""""""""""""""""""""
Plugin 'w0rp/ale'

" vim-airline
"""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'

" vim-polyglot
"""""""""""""""""""""""""""""""
Plugin 'sheerun/vim-polyglot'

" ctrlp.vim
"""""""""""""""""""""""""""""""
Plugin 'ctrlpvim/ctrlp.vim'


""PLUGINS MUST GO BEFORE HERE""
call vundle#end()
filetype plugin indent on

" VIM Config
"""""""""""""""""""""""""""""""
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
