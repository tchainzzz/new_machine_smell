syntax on
set number
set mouse=a
set hlsearch
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set laststatus=2
set ignorecase
set showtabline=2"
set foldlevel=99
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_buffers = 1 
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnametruncate = 20
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#right_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#ignore_bufadd_pat = 'defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'
"
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9



Plugin 'tmhedberg/SimpylFold'
"Plugin 'itchyny/lightline.vim'
Plugin 'valloric/youcompleteme'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


Plugin 'vim-syntastic/syntastic'
" Plugin 'nvie/vim-flake8'
Plugin 'junegunn/fzf'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'yggdroot/indentline'
let g:indentLine_color_term = 59
Plugin 'preservim/nerdtree'
nnoremap tree :NERDTreeToggle
nnoremap <space> za
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


