" This is configuration file for using vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" This is for python PEP8 auto indentation
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" This is my vimrc configuration file
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

set splitbelow
set splitright

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

colorscheme lucariox



" Setting for NerdCommenter 
let g:NERDCustomDelimiters = {'c': {'left': '/*', 'right': '*/'}}

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
set hlsearch
set completeopt-=preview

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

highlight YcmWarningLine guibg=#FFFF00

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_python_binary_path = "//anaconda/bin/python3"
" custom highlight groups
highlight IsModified ctermbg=red
highlight IsNotModified ctermbg=green

" Dynamic status line
set statusline+=%#IsModified#%{&mod?expand('%'):''}%*%#IsNotModified#%{&mod?'':expand('%')}%*

hi Directory guifg=#FF0000 ctermfg=red

" Load rope plugin
let g:pymode_rope = 0
