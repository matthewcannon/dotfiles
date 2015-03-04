set nocompatible | filetype indent plugin on | syn on
fun! SetupVAM()
		let c = get(g:, 'vim_addon_manager', {})
		let g:vim_addon_manager = c
		let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
		let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
		if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
				execute '!git clone --depth=1 https://github.com/MarcWeber/vim-addon-manager '
										\       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
		endif
		call vam#ActivateAddons([], {'auto_install' : 0})
		call vam#ActivateAddons(['powerline'])
endfun
let g:vim_addon_manager = {'scms': {'git': {}}}
fun! MyGitCheckout(repository, targetDir)
		let a:repository.url = substitute(a:repository.url, '^git://github', 'http://github', '')
		return vam#utils#RunShell('git clone --depth=1 $.url $p', a:repository, a:targetDir)
endfun
let g:vim_addon_manager.scms.git.clone=['MyGitCheckout']
call SetupVAM()
VAMActivate The_NERD_tree jellybeans vim-autoformat Tagbar fugitive github:kristijanhusak/vim-multiple-cursors github:scrooloose/syntastic github:kien/ctrlp.vim
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
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
noremap <C-C> :q!<cr>
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <C-E> :TagbarToggle<CR>
nmap <c-s> :Autoformat<cr> :update<cr>
imap <c-s> <esc> :Autoformat<cr> :update<cr>a  
let g:NERDTreeDirArrows=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['tag', 'buffertag']
