" disable filetype during setup
filetype off

" load Vundle
source ~/.vim/.vundle

"
" indentation settings
"
set tabstop=4
set softtabstop=4
set sw=4
set expandtab
set autoindent                      " enable auto indent
set list listchars=tab:\ \ ,trail:· " display whitespace

"
" window settings
"
set splitright    " windows split to right
set splitbelow    " windows split down
set number        " show line numbers
set title         " display filename as window title
set titleold=     " prevent old title
set textwidth=80  " set wrap to 80 chars
set ruler         " show cursor position
set laststatus=2  " always display status line
set mouse=a       " use mouse in all modes
" Mark the 81st column
if exists('+colorcolumn')
  set colorcolumn=+1
endif
" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

"
" key settings
"
" use ; as : for commands
nmap ; :
" tab to switch between screens
nnoremap <Tab> <C-w><C-w>
" shift-tab for opposite direction
nnoremap <S-Tab> <C-w>
" use H as start of line
noremap H ^
" use L as end of line
noremap L $
" make backspace work on OSX
set backspace=2

"
" search settings
"
set nohlsearch  " disable highlighting for search
set incsearch   " incremental search while typing
set ignorecase  " ignore case in search
set smartcase   " be case sensitive if a upper case char is used

"
" file settings
"
set backupdir=~/.vim/backup " set backup directory
set autoread                " read files when modified
set autowrite               " write when changing buffers

"
" theme settings
"
"
syntax on
syntax enable
set background=dark
colorscheme solarized

"
" gvim settings
"
set guioptions-=m   " remove menu bar
set guioptions-=T   " remove toolbar

" enable filetype settings for plugins, not indenting
filetype plugin on
filetype indent off

