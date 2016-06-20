" vim configuration options
" Lauren Caliolio 4/14/2015
" Links: http://dougblack.io/words/a-good-vimrc.html

" Enabling pathogen for vim plugin mgmt
call pathogen#infect()
call pathogen#helptags()

" Enable syntax
syntax enable

" Setting 4 spaces per 1 tab
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Show line numbers
set number

" Show last command entered
set showcmd

" Show highlight on the line that I'm on
set cursorline

" Highlight matching ()[], etc
set showmatch

" Highlight search results
set hlsearch

" Search as string is entered
set incsearch

" Set background theme to dark 
" So that I can see the colors against a black screen
set background=dark

" Set auto indentation
set ai

" Set comments so that * + [spacebar] will automatically appear 
set com=fb:*
