" ************************************
" Basic settings.
" ********************************
set nocompatible
set cursorline
filetype off
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
set gdefault
set lazyredraw
set rnu
" ************************************
" Configure plugins.
" ********************************
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
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
Plugin 'airblade/vim-gitgutter'
Plugin 'janko-m/vim-test'
Plugin 'neomake/neomake'
Plugin 'ruanyl/coverage.vim'
Plugin 'gabesoft/vim-ags'
Plugin 'itchyny/lightline.vim'
call vundle#end()
filetype plugin indent on
colorscheme jellybeans
let g:partialWord= "none"
" ************************************
" Manage buffers.
" ************************************
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <c-x> :BOnly<return>
noremap <c-c> :q!<cr>
" ************************************
" Navigate the file system.
" ************************************
let g:NERDTreeDirArrows=0
let g:NERDTreeShowHidden=1
nmap <silent> <c-d> :NERDTreeToggle<cr>
nmap <silent> <c-h> :NERDTreeFind<cr>
" ************************************
" Navigate code.
" ************************************
nmap <silent> <c-e> :TagbarToggle<cr>
" ************************************
" Find symbols.
" ************************************
nmap <silent> <c-l> :Ags<cr>
" ************************************
" Auto-format code using Prettier.
" ************************************
nmap <c-u> :Prettier<cr> :w!<cr>
imap <c-u> :Prettier<cr> :w!<cr>a
" ************************************
" Visualise javascript code coverage.
" ************************************
let g:coverage_json_report_path='coverage/coverage-final.json'
let g:coverage_sign_column_always=1
" ************************************
" Test javascript.
" ************************************
let g:test#javascript#jest#options='--reporters jest-vim-reporter'
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
" ************************************
" Test golang.
" ************************************
" let g:go_test_timeout='5s'
" nmap <c-u> :update<cr>:GoTest<cr>
" imap <c-u> :update<cr>:GoTest<cr>autoformat
" ************************************
" Git.
" ************************************
nmap <silent> g<C-s> :Gstatus<CR>
nmap <silent> g<C-d> :Gvdiff<CR>
nmap <silent> g<C-b> :Gblame<CR>
nmap <silent> g<C-c> :Gcommit<CR>
nmap <silent> g<C-p> :Gpush<CR>
" ************************************
" Code completion.
" ************************************
set completeopt=longest,menuone,preview
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildmenu
set wildmode=longest,list
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
" ************************************
" File types for web development.
" ************************************
au BufRead,BufNewFile *.hbs setfiletype html
au BufRead,BufNewFile *.scss setfiletype scss.css
