set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf8
set showmatch
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set sw=4
set relativenumber
set laststatus=2
set wildmenu
set wildmode=longest:full,full
set cursorline
set hlsearch
set incsearch

call plug#begin('~/.vim/plugged')

" Themes

Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git implementation
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Imports
source /home/raul/.config/nvim/coc/coc.vim

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>W :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>di :SignifyToggleHighlight<CR>

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>nti :NERDTreeToggle<CR>

nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle


" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk


" If you like colors instead
 highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
 highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
 highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

let g:airline_theme='cool'


