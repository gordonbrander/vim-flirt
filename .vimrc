""
"" Install Vundle
""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""
"" Bundles
""

"" Common Keyboard mappings
Plugin 'tpope/vim-unimpaired'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ervandew/supertab'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
"" Sublime-style multiple cursors
Plugin 'terryma/vim-multiple-cursors'
Plugin 'chrisbra/NrrwRgn'
Plugin 'airblade/vim-gitgutter'
Plugin 'maciakl/vim-neatstatus'

"" Color theme
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

"" Language bundles
Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
Plugin 'tpope/vim-markdown'
"" Stylus language highlighting
Plugin 'wavded/vim-stylus'

" Install Snipmate.
" <https://github.com/garbas/vim-snipmate#using-vundle>
" First, install dependencies...
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Then install Snipmate bundle
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" Configure BufferGator
let buffergator_viewport_split_policy = 'T'
let buffergator_split_size = 15

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""
"" Basic Setup
""

" Turn on syntax highlighting allowing local overrides
syntax enable
" Enable degraded Solarized, if you want
" let g:solarized_termcolors=256
" Set Solarized light/dark
set background=dark
colorscheme solarized

set number            " Show line numbers
set ruler             " Show line and column number
set encoding=utf-8    " Set default encoding to UTF-8
set colorcolumn=80    " Show a visual indicator of the 80-character mark.
set showmatch         " Highlight matching parenthesis

" Always show status line
set laststatus=2

""
"" Swap Files
""

set dir=~/.vim/tmp
set backupdir=~/.vim/tmp

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

if exists('g:enable_mvim_shift_arrow')
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

"" Share clipboard with OSX
set clipboard=unnamed

"" Turn on mouse support in xterm.
set mouse=a

