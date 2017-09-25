" Use Vim settings instead of Vi settings
set nocompatible

" Load all plugins specified in ~/.vim/vundle.vim.
" We let the Vundle plugin manage all other plugins.
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" General configuration
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set mouse=a
set backspace=indent,eol,start
set autoread

" Turn syntax highlighting on.
syntax on
set background=dark
colorscheme antares

" For terminal vim, set 256 colors so color scheme renders properly.
if !has("gui_running")
  set t_Co=256
endif

" Indentation defaults. Can be overridden by filetype specific preferences
" in after/ftplugin.
filetype on
filetype plugin on
filetype indent on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab

" Automatically scrolls when the cursor is close to the top/bottom of window.
set scrolloff=8

" Turn off swap files.
set noswapfile
set nobackup
set nowb

" Strip trailing spaces when saving file.
autocmd BufWritePre * :%s/\s\+$//e

" Show status bar and title.
set laststatus=2

" Set font to one patched for Powerline.
set guifont=Meslo\ LG\ S\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1

" Set file format to Unix.
set ff=unix

" Bash-like autocomplete. You can use Ctrl-n and Ctrl-p to go through matches.
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
