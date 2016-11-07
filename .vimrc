set number
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colors happy_hacking
set hidden

" set the runtime path to include Vundle and initialize
set rtp+=/home/joaocarvalho/.vim/bundle/Vundle.vim
call vundle#begin("/home/joaocarvalho/.vim/bundle/")
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdTree'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-powerline'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'easymotion/vim-easymotion'

Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'

Plugin 'kien/ctrlp.vim'

Plugin 'tomtom/tcomment_vim'

Plugin 'vim-ctrlspace/vim-ctrlspace'

Plugin 'tpope/vim-rails'

Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'yggdroot/indentline'
Plugin 'tpope/vim-dispatch'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set mouse=a " Enable mouse movement

set exrc
set showcmd " See partial command as u type them

set ruler
set guifont=Consolas:h13:cANSI
set tabstop=4
set linespace=15
set visualbell
set noerrorbells

au GUIEnter * simalt ~x " Configuring to go full screen on gvim

set history=500

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Comment paragraph fast
nmap <A-/> gcip<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
"command W w !sudo tee % > /dev/null

set so=7

set mouse=a

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Highlight search results
"set hlsearch

highlight Search cterm=underline

set t_vb= " Remove the blink in the end or beginnig of file
" NERDTree configuration
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

let NERDTreeShowHidden=1
let NERDTreeWinSize=25
let g:Powerline_symbols = 'fancy'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"let g:ctrlp_by_filename = 0

" Swap line functions
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <c-s-k> :call <SID>swap_up()<CR>
noremap <silent> <c-s-j> :call <SID>swap_down()<CR>

set laststatus=2 " Always show the status line
set encoding=utf-8 " Encoding
set t_Co=256 " Colors 256
let g:Powerline_symbols = 'fancy'

set listchars=tab:>~,nbsp:_,trail:.
set list

nnoremap  ; :
nnoremap  : ;

nmap b <C-^>
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
filetype plugin indent on

" associate *.foo with php filetype
au BufRead,BufNewFile *.js.coffee setfiletype coffee
