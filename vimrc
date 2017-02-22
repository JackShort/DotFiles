"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Jack Short: VIMRC                 "
"                                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Fugitive: Git Plugin
Plugin 'tpope/vim-fugitive'

"Airline: Powerline Plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"NERDTree: File Manager
Plugin 'scrooloose/nerdtree'

"Syntax Checker
Plugin 'scrooloose/syntastic'

"Surround: Surround Shit
Plugin 'tpope/vim-surround'

"ctrlp: Basically Helm
Plugin 'kien/ctrlp.vim'

"Tagbar: Shows tags
Plugin 'majutsushi/tagbar'

"NERDcommenter: Great Commenting
Plugin 'scrooloose/nerdcommenter'

"YouCompleteMe: Completion
Plugin 'valloric/youcompleteme'

"Tabular: Tab shit
Plugin 'godlygeek/tabular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""" -- MAPPING -- """"""
:imap jk <Esc>

""""""" -- CHANGE CURSOR -- """"""
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1


syntax enable
colorscheme koe
