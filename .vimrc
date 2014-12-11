set nu
colo evening
set backspace=indent,eol,start

set previewwindow

set undofile

set undodir=$HOME/.vim/undo

set laststatus=2

"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = '/home/Yuanzhang/.vim/bundle/YouCompleteMe/ycm_extra_conf_default.py'

" python-dev cmake build-essential
" cd ~/.vim/bundle/YouCompleteMe
" ./install.sh --clang-completer
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
" Beautiful Uh?
Plugin 'kien/rainbow_parentheses.vim'
" A guide
Plugin 'Yggdroot/indentLine'
" Save my eye
Plugin 'altercation/vim-colors-solarized'

" Pair Parenthesis
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_excluded_regions = "Comment,String"
let delimitMate_balance_matchpairs = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" tabstops
" :%retab!
:set shiftwidth=4
:set tabstop=4
:set expandtab

":set cursorcolumn
":set cursorline

" Color Parenthese always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" show trailing whitespaces
Bundle 'ntpeters/vim-better-whitespace'
" :ToggleWhitespace
" :StripWhitespace
" clean whitespaces

" Sola
syntax enable
"set background=light
"colorscheme solarized

" git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72
