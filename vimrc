" plugins {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'mbbill/undotree'
Plugin 'fatih/vim-go'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
call vundle#end()
filetype plugin indent on
let g:go_fmt_command = "goimports"
set completeopt-=preview
" }}}

set encoding=utf-8
set number
set relativenumber
set cursorline
set ruler
syntax on
colorscheme gruvbox
set bg=dark
set incsearch
set hlsearch
set foldcolumn=1
set foldmethod=manual
set foldlevel=99
set clipboard=unnamed
" Put swap files into one place to avoid polluting filesystem.
set directory^=$HOME/.vim/swapfiles//
set backspace=2

" {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"
let mapleader = "-"
" List format translations (https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/listtrans.vim).
nnoremap <leader>l :call ListTrans_toggle_format()<cr>
xnoremap <leader>l :call ListTrans_toggle_format('visual')<cr>
" Swap ';' with ':' in normal mode.
nnoremap ; :
nnoremap : ;
" Move fast to normal node.
inoremap jj <esc>
" Open terminal window.
noremap <leader>t :botright terminal ++rows=10<cr>
" Reload vimrc.
nnoremap <leader>v :source $MYVIMRC<cr>
" Search in current directory recursively.
" Toggle undo-tree panel.
nnoremap <leader>u :UndotreeToggle<cr>
set path=**
" Persistent undo history.
set undofile
set undolevels=1024
set undodir=~/.vim/undo/
" Hide buffer instead of closing.
set hidden
set listchars=tab:▸\ ,eol:¬
set list
" Tree view.
let g:netrw_liststyle = 3
" Hide banner.
let g:netrw_banner = 0
" Open files in preview window.
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
" Ignore case in pattern.
set ignorecase
" Override 'ignorecase' if uppercase is used in pattern.
set smartcase
" Write file with sudo.
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" Move to terminal Normal mode.
tnoremap <ESC> <C-\><C-N>
" The dot command in visual mode.
vnoremap . :normal.<CR>
