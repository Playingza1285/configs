
"""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
call plug#begin()

    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'junegunn/goyo.vim'
    Plug 'amix/vim-zenroom2'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'maxbrunsfeld/vim-yankstack'
    Plug 'nathanaelkane/vim-indent-guides'
    "Plug 'itchyny/lightline.vim'
    "
    Plug 'vim-airline/vim-airline'
    if has ("nvim")
        Plug 'ackyshake/VimCompletesMe'
    else
        Plug 'ycm-core/YouCompleteMe'
    endif

    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'github/copilot.vim'

    """"""""""""""""""""""""""""""""""""""""""""""
    " Color Schemes
    if has ("gui_running")
        " do nothing
    else
        Plug 'vim-scripts/CSApprox'
    endif

    Plug '4513ECHO/vim-colors-hatsunemiku'
    Plug 'joshdick/onedark.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'Mangeshrex/uwu.vim'
    Plug 'haystackandroid/strawberry'
    Plug 'rayes0/blossom.vim'
    Plug 'Shadorain/shadotheme'
    Plug 'sts10/vim-pink-moon'
    Plug 'tomasr/molokai'
    Plug 'savq/melange'
    Plug 'ronwoch/hotline-vim'
    "Plug 'tamelion/neovim-molokai'

    """"""""""""""""""""""""""""""""""""""""""""""""""
    " Syntax
    Plug 'bfrg/vim-cpp-modern'

    " latex editor
    Plug 'lervag/vimtex'

call plug#end()

"caps the history
set history=500

" some minor changes
set number
set completeopt-=preview
set so=7
set ruler
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
set background=dark

try
    colorscheme molokai
catch
endtry

set encoding=utf8
set ffs=unix,dos,mac

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymappings
" remap leader
let mapleader = ','

" bind the save to something easy
" nmap <leader><Space> :w<CR>
" already bound in the main vimrc file
" <leader>w

" make it easier to navigate splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" easy way to add lines without entering insert mode
" add line after
nmap <C-o> o<ESC>
" add line before
nmap <C-o>o O<ESC>

"fix indenting of the entire file
"use sparingly cuz it might mess stuff up
nmap <leader>s gg=G''

"Opens Nerdtree for convienience
nmap t :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax

let c_no_curly_error=1

