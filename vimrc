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

"Supertab: tab completion
Plugin 'ervandew/supertab'

"AutoPairs: pair completion
Plugin 'jiangmiao/auto-pairs'


"EasyMotion: Basically shortcuts
Plugin 'easymotion/vim-easymotion'


"Emmet: Web Completion
Plugin 'mattn/emmet-vim'

"gruvbox: theme
Plugin 'morhetz/gruvbox'

"dracula: theme
Plugin 'dracula/vim'

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

""""""" -- GENERAL SETTINGS -- """"""
" Change cursor on indent
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Airline Theme
:let g:airline_theme='dracula'

set background=dark                   " set background color to dark
set colorcolumn=100                   " show a column at 100 chars
set cursorline                        " highlight current line
set laststatus=2                      " enable airline on open
set noshowmode                        " don't show mode as airline already does
set number                            " show line numbers
set relativenumber                    " show relative line numbers
set ruler                             " show current position at bottom
set scrolloff=5                       " keep at least 5 lines above/below
set shortmess+=aAIsT                  " disable welcome screen and other messages
set sidescroll=1                      " smoother horizontal scrolling
set sidescrolloff=5                   " keep at least 5 lines left/right
set splitbelow                        " create new splits below
set splitright                        " create new splits to the right
set termguicolors                     " enable true colors
set wildmenu                          " enable wildmenu
set wildmode=longest:full,full        " configure wildmenu

" whitespace
set expandtab                         " use tabs instead of spaces
set nojoinspaces                      " use one space, not two, after punctuation
set shiftround                        " shift to next tabstop
set shiftwidth=2                      " amount of space used for indentation
set softtabstop=2                     " appearance of tabs
set tabstop=2                         " use two spaces for tabs

" text appearance
set list                              " show invisible characters
set listchars=tab:>·,trail:·,nbsp:¬   " but only show useful chaaracters
set nowrap                            " disable line wrapping

" interaction
set backspace=2                       " make backspace work like most other apps
set mouse=a                           " enable mouse support
set mousehide                         " hide the mouse cursor while typing
set whichwrap=b,s,h,l,<,>,[,]         " backspace and cursor keys wrap too
set esckeys                           " allow cursor keys in insert mode

" searching
set hlsearch                          " highlight search matches
set ignorecase                        " set case insensitive searching
set incsearch                         " find as you type search
set smartcase                         " case sensitive searching when not all lowercase

" background processes
set autoread                          " update file when changed outside of vim
set autoindent                        " copy indentation from the previous line for new line
set clipboard=unnamed                 " use native clipboard
set history=200                       " store last 200 commands as history
set nobackup                          " don't save backups
set noerrorbells                      " no error bells please
set noswapfile                        " no swapfiles
set nowritebackup                     " don't save a backup while editing
set ttyfast                           " indicates a fast terminal connection
set undodir=~/.config/nvim/undodir    " set undofile location
set undofile                          " maintain undo history between sessions
set undolevels=1000                   " store 1000 undos

" character encoding
if !&readonly && &modifiable
  set fileencoding=utf-8              " the encoding written to file
endif
set encoding=utf-8                    " the encoding displayed

colorscheme dracula                   " set color scheme

""""""" -- KEYS -- """"""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let mapleader=" "

" EASY MOTION STUFF
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" EMMET STUFF
let g:user_emmet_leader_key=','

syntax enable
filetype plugin indent on
