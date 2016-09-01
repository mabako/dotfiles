set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" include tex folding
Bundle 'matze/vim-tex-fold'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
filetype plugin on

" default to LaTeX for tex files
let g:tex_flavor="latex"
