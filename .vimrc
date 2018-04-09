set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'powerline/powerline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'Chiel92/vim-autoformat'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
let g:go_version_warning = 0
Plugin 'dyng/ctrlsf.vim'
call vundle#end()
filetype plugin indent on
au BufRead,BufNewFile *.hbs setfiletype html
au BufRead,BufNewFile *.scss setfiletype scss.css
set omnifunc=syntaxcomplete#Complete
syn on
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
set scrolloff=120
set completeopt=longest,menuone,preview
set gdefault
set wildmenu
set wildmode=longest,list
set lazyredraw
set rnu
colorscheme jellybeans
let g:partialWord= "none"
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <c-x> :bd<return>
noremap <c-c> :q!<cr>
nmap <silent> <c-d> :NERDTreeToggle<cr>
nmap <silent> <c-e> :TagbarToggle<cr>
" Run all Go tests immediately after writing the file.
" nmap <c-u> :update<cr>:GoTest<cr>
" imap <c-u> :update<cr>:GoTest<cr>a
nmap <c-u> :Autoformat<cr> :w!<cr>
imap <c-u> :Autoformat<cr> :w!<cr>a
nmap <silent> <c-l> :CtrlSF<cr>
let g:go_test_timeout='5s'
let g:NERDTreeDirArrows=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
nnoremap <c-f> :CtrlSF<cr>
inoremap <c-f> :CtrlSF<cr>
