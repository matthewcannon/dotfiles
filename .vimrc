set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"powerline
"The_NERD_tree
"jellybeans
"vim-autoformat
"Tagbar
"fugitive
"github:kristijanhusak/vim-multiple-cursors
"github:scrooloose/syntastic
"github:kien/ctrlp.vim
"github:tpope/vim-commentary
set syn on
set number
set mouse=a
set autoindent
set si
set history=1000
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set backspace=indent,eol,start
set scrolljump=5
set scrolloff=3
set completeopt=longest,menuone,preview
set gdefault
set wildmenu
set wildmode=longest,list
set lazyredraw
colorscheme jellybeans
let g:partialWord= "none"
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
noremap <c-c> :q!<cr>
nmap <silent> <c-d> :NERDTreeToggle<cr>
nmap <silent> <c-e> :TagbarToggle<cr>
"nmap <c-s> :Autoformat<cr>:update<cr>
"imap <c-s> <esc> :Autoformat<cr>:update<cr>a  
let g:NERDTreeDirArrows=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['tag', 'buffertag']
