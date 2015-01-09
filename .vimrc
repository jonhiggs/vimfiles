set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'csexton/trailertrash.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'jonhiggs/MacDict.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'plasticboy/vim-markdown'
Plugin 'reedes/vim-pencil'

call vundle#end()

filetype plugin indent on
