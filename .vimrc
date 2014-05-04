" Enable Pathogen for plugins
execute pathogen#infect()
filetype plugin indent on

" Change mapleader
let mapleader=","

" Enable line numbers
set number

" Automatically load file changes
source ~/.vim/bundle/watchforchanges/watchforchanges.vim
let autoreadargs={'autoread':1}
execute WatchForChanges("*", autoreadargs)

" Enable syntax highlighting
" If using iTerm2 download and set the theme in Profile -> Colors
syntax on
set t_Co=256
set background=dark
colorscheme jellybeans

" Highlight current line
set cursorline

" Make tabs as wide as two spaces and use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Ctrl-P
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](dist|node_modules|tmp|\.git|\.tmp)$',
  \ 'file': '\v[\/].(gif|ico|jpg|png|zip)$',
  \ 'link': ''
  \ }

" NERDTree
" Open nerdtree on startup if no file was specified
" autocmd vimenter * if !argc() | NERDTree | endif
" Set up nerdtree shortcut: Ctrl + Shift + K
map <C-S-k> :NERDTreeToggle<CR>
" Close vim if the only open window is nerdtree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Close nt after opening a file
let NERDTreeQuitOnOpen = 1 
