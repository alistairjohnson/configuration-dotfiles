set nocompatible " Disable vi compatibility.
set ruler 	     " Show the line and column numbers of the cursor position. 
set ignorecase   " Case insensitive matching when searching.
set tabstop=4 	 " set tabs to four spaces
set cindent      " c-style indenting 
set number 		 " show line numbers 
set incsearch    " show search results as you type
set hlsearch     " highlight all results when doing a search
set autoindent	 " apply the indentation of the current line to the next
set showmatch	 " briefly jump to matching brace
set shiftwidth=4 " set number of spaces to be used for each step of indentation
set autochdir	 " Vim will change the current working directory whenever you open a file or switch buffers to the directory containing the file which was opened/selected.
set splitbelow   " splitting a window will put the new window below the current window
set backspace=indent,eol,start "to ensure backspace key works in insert mode
syntax on 	     " turn syntax highlighting on by default
filetype on      " Vim will detect the type of file that is edited

" These options specify the functions to be used for Insert mode omnicompletion (with ctrl-x ctrl-o)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Using the OSCYank plugin, copy content to system clipboard after any yank operation
autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif

" Map jj to <ESC> as an alternative to exit insert mode
inoremap jj <Esc>

" Map leader key to "," as the default "\" is harder to reach
let mapleader = ","

" set the path to the current directory and to all directories under the current directory
set path=$PWD/**

" enable the dictionary in vim (Ctrl-x Ctrl-k to display matching dictionary words)
set dictionary+=/usr/share/dict/words 

" Make vim more browser-like
:map <Space> <PageDown>

" start scrolling when cursor is 10 lines from the top/bottom edge
set scrolloff=10

"Underline the current line with dashes in normal mode
nnoremap <F6> yyp<c-v>$r-

" Underline the current line with dashes in insert mode
inoremap <F6> <Esc>yyp<c-v>$r-A

" Enable visual line wrapping so that long lines are displayed over more than one terminal line
set wrap

" Disable physical line wrapping (i.e. prevent Vim from inserting newlines into text)
set textwidth=0
set wrapmargin=0

" Place vim in/out of paste mode with a single key press
set pastetoggle=<F8>

"Bind Shift+<movement> keys to move around windows
map <S-j> <c-w>j
map <S-k> <c-w>k
map <S-l> <c-w>l
map <S-h> <c-w>h

" Set keyboard shortcut for NERDTree
nmap <leader>ne :NERDTree<cr>
map <C-n> :NERDTreeToggle<CR>

"Bind Control+<arrow keys> to change size of windows (when they've been horizontally split)
nmap <C-j> <C-w>+
nmap <C-k> <C-w>-

"Bind Control+<arrow keys> to change size of windows (when they've been vertically split)
nmap <C-h> <C-w>>
nmap <C-g> <C-w><

" Setup vim-plug (https://github.com/junegunn/vim-plug)
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" https://github.com/ojroques/vim-oscyank
Plug 'ojroques/vim-oscyank'

" Initialize plugin system
call plug#end()
