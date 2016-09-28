set nocompatible
filetype off

let mapleader=","
let maplocalleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'lervag/vimtex'

" close html/xml tags automagically
Plugin 'closetag.vim'

Plugin 'hashivim/vim-vagrant'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
filetype plugin on

" default to LaTeX for tex files
let g:tex_flavor="latex"

" allow for a machine-specific config
try
		source ~/.vimrc_machine
catch
		" do nothing. who cares?
endtry

" highlight spaces at EOL
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
