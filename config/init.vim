set encoding=utf-8
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'bigbrozer/vim-nagios'
Plugin 'csexton/trailertrash.vim'
Plugin 'hdima/python-syntax'
Plugin 'jonhiggs/MacDict.vim'
Plugin 'jonhiggs/tabline.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'pearofducks/ansible-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'reedes/vim-pencil'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on
