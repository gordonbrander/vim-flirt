""
"" Install Vundle
""

set nocompatible      " Use vim, no vi defaults
filetype off          " required by Vundle!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

""
"" Bundles
""

Bundle "tpope/vim-fugitive"
Bundle "pangloss/vim-javascript"
Bundle "ervandew/supertab"
Bundle "scrooloose/syntastic"
Bundle "tomasr/molokai"
Bundle "scrooloose/nerdcommenter"
Bundle "tpope/vim-markdown"
Bundle "sjl/gundo.vim"
Bundle "jeetsukumaran/vim-buffergator"
"" Stylus language highlighting
Bundle "wavded/vim-stylus"

" Install Snipmate.
" <https://github.com/garbas/vim-snipmate#using-vundle>
" First, install dependencies...
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
" Then install Snipmate bundle
Bundle "garbas/vim-snipmate"

filetype plugin indent on " required by Vundle! ('filetype plugin on' also works)

"" Configure BufferGator
let buffergator_viewport_split_policy = "T"
let buffergator_split_size = 15

""
"" Basic Setup
""

color molokai         " Use Monokaii colorscheme port for vim

set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
set colorcolumn=80    " Show a visual indicator of the 80-character mark.
set showmatch         " Highlight matching parenthesis

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

if exists("g:enable_mvim_shift_arrow")
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
