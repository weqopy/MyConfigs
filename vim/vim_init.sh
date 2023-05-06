syntax on
set nocompatible
filetype off

syntax enable

set guioptions-=r
set guioptions-=L
set guioptions-=b

set guifont=Monaco:h13
set guicursor=a:ver20-blinkon0
hi Cursorline cterm=NONE ctermbg=gray ctermfg=green guibg=NONE guifg=NONE
hi Cursorcolumn cterm=NONE ctermbg=gray ctermfg=green guibg=NONE guifg=NONE
set smartindent
set autoindent
set confirm
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fileformat=unix
set expandtab
set number
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1
set langmenu=zn_CN.UTF-8
set helplang=cn
set ruler
set showmatch

set ignorecase smartcase
set hls
set incsearch
set hlsearch
set backspace=2

set noerrorbells
set novisualbell
set vb t_vb=

set laststatus=2
set statusline=\ %F\ %=\ %m\ %Y\ [%v-%l-%L/%p%%]
set showcmd

let g:indentLine_char='|'
let g:indentLine_enabled = 1
