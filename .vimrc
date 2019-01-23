set nocompatible " be iMproved, required
filetype off " required
set exrc

" set encoding=UTF-8

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" === plugin manager
Plugin 'VundleVim/Vundle.vim'

" === This is for making vim coding easier
Plugin 'vim-scripts/L9'

" === Nerd Tree
Plugin 'scrooloose/nerdtree'

" ==== Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" beautify the deserted status bar
Plugin 'itchyny/lightline.vim'

" Emmet
Plugin 'mattn/emmet-vim'

" This plugin quickly helps to add pair of surrounding braces or anything
Plugin 'tpope/vim-surround'

" Best plugin in the market for autocomplete
Plugin 'Valloric/YouCompleteMe'

" For syntax
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ap/vim-css-color'

" ==== snippets, Install this someday
"Plugin 'SirVer/ultisnips'

" ==== PLUGIN THEMES
Plugin 'morhetz/gruvbox'

" === For quick file navigation
Plugin 'kien/ctrlp.vim'

"For angular and typescript
Plugin 'leafgarland/typescript-vim'

" File modification git notifier for NerdTree extension
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()

" No idea what this is
filetype plugin indent on


" == For ctrl+p to quickly open the file explorer 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"Random shit == learnt this in wikia==map <F2> :echo 'Current time is ' . strftime('%c')<CR>



" ====== This deals with vim configuaration
" ========
" ==============

" === plain configurations
"set number
"=== this gruvbox alone is really weird; gives gheuri-color
colorscheme gruvbox
set background=dark " so we do this

" Copying the code from github.com/sebbekarlsson
set ruler
syntax enable
set hidden
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4

" code folding
set foldmethod=indent

" Auto Save
autocmd TextChanged,TextChangedI <buffer> silent write

" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

" this automatically closes NERDTree on opening a file
let NERDTreeQuitOnOpen = 1
" Code below automatically closes NERDTree if it's the only window, somehow
" this is not working
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeWinSize=30
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" give full path of the working file
set statusline+=%F

" === All about the status bar
set laststatus=2 " somehow lightline magically appears
" this bottom line might have been necessary if i got everything black and white
" export TERM=xterm-256color
" after we add status bar we no longer need the --INSERT-- of default vim so:
set noshowmode
" This changes the color scheme of light line
" possible options are: wombat, jellybeans, solarized dark, seoul256, one
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

"
""" some custom commands
" 

" ==== selects a word in normal mode; more selection through arrow keys
map <space> viw

" for tab navigation
" Next tab
map <Ctrl-Alt-PageUp> gt 
" previos tab
map <Ctrl-Alt-PageDown> gT

"===
" == Traversing through tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" =================== CHANGING individual window sizes
" 10 seems like a good number
map 20<c-w>> <c-w>

" =========== For indentation 
map <leader>z :set tabstop=2<CR> 
map <leader>x :set shiftwidth=2<CR> 

