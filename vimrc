"mooo
set nocompatible     " be iMproved
filetype off        " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/L9.git'
Bundle 'mileszs/ack.vim'
Bundle 'wincent/Command-T'
"Bundle 'tpope/vim-rails'

" use ack instead of grep
set grepprg=ack

filetype plugin indent on

let mapleader=',' " mapleader auf Komma gemapt
map <leader>n :NERDTreeToggle<CR>

" map command-T
nnoremap <silent> ,t :CommandT<CR>


" use arrow to switch windows
"nmap <silent> <C-k> :wincmd k<CR>
"nmap <silent> <C-j> :wincmd j<CR>
"nmap <silent> <C-h> :wincmd h<CR>
"nmap <silent> <C-l> :wincmd l<CR>

" Search for the string marked in visual mode. E.g.: press v, go some chars to the right, press /
vmap / y/<C-R>"<CR>
vmap ß y:Ack <C-R>"<CR>

" FuzzyFinder
"nnoremap <silent> ,t :FufFileWithCurrentBufferDir<CR>
"nnoremap <silent> ,T :FufFile **/<CR>
"let g:fuf_dir_exclude = '\v(^|[/\\])(\.(hg|git|bzr|svn)|tmp)($|[/\\])'
"let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|tmp)($|[/\\])'

" some visual helpers
set number
set ruler
syntax on
set wrap
set tw=0
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_hitrail=1
let g:solarized_termtrans=1
"colorscheme solarized
colorscheme ir_black
set background=dark

set mouse=a
set cpoptions=aABceFsmq
syntax on "Syntax highlighting an
set cmdheight=2 "Hoehe der Statusbar
set laststatus=2 "Immer anzeigen
set scrolloff=4 "Minimum lines around cursor
set showmatch "Passende Klammern anzeigen
set ts=2 "Tabstop-Groesse
set softtabstop=2 "Number of spaces for tabs
set expandtab
set autoindent "always autoindenting
set shiftwidth=2 "number of spaces for each autoindent
set noedcompatible
set bs=2 "Backspace eingestellt
set ai "Autoindent
set vb "visual bell
set title "window title
set autoread "read files for changes on disk
