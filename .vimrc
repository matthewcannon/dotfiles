set nocompatible
set cursorline
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
Plugin 'prettier/vim-prettier'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'janko-m/vim-test'
Plugin 'neomake/neomake'
call vundle#end()
let g:ack_autoclose = 1
let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
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
nnoremap <c-x> :BOnly<return>
noremap <c-c> :q!<cr>
nmap <silent> <c-d> :NERDTreeToggle<cr>
nmap <silent> <c-h> :NERDTreeFind<cr>
nmap <silent> <c-e> :TagbarToggle<cr>
let g:go_version_warning = 0
" nmap <c-u> :update<cr>:GoTest<cr>
" imap <c-u> :update<cr>:GoTest<cr>autoformat
nmap <c-u> :Prettier<cr> :w!<cr>
imap <c-u> :Prettier<cr> :w!<cr>a
nmap <silent> <c-l> :Ack!<cr>
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
nmap <silent> g<C-s> :Gstatus<CR>
nmap <silent> g<C-d> :Gvdiff<CR>
nmap <silent> g<C-b> :Gblame<CR>
let g:go_test_timeout='5s'
let g:NERDTreeDirArrows=0
let g:NERDTreeShowHidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
