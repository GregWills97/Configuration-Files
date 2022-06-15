set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'darrikonn/vim-gofmt'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set relativenumber
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=16

"Key Bindings
nmap <F8> :TagbarToggle<CR>
nmap <F1> :NERDTree<CR>
nmap <F4> :SyntasticToggleMode<CR>
nmap <F2> :silent! !zathura '%:r.pdf'&<CR>
nmap <F5> :GoFmt<CR>


"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"Latex settings and autocompiling
autocmd BufNewFile,BufRead *.tex set spell spelllang=en_us
autocmd BufWritePost *.tex silent! !make

" -----TEMPLATES----- "

"Default template for tex file
autocmd BufNewFile *.tex norm i\documentclass[a4paper, 12pt]{article}
autocmd BufNewFile *.tex norm o\usepackage[margin=1in]{geometry}
autocmd BufNewFile *.tex norm o
autocmd BufNewFile *.tex norm o\title{My Document}
autocmd BufNewFile *.tex norm o\author{Gregory Williams}
autocmd BufNewFile *.tex norm o
autocmd BufNewFile *.tex norm o\begin{document}
autocmd BufNewFile *.tex norm o
autocmd BufNewFile *.tex norm o\maketitle
autocmd BufNewFile *.tex norm o
autocmd BufNewFile *.tex norm o\end{document}
autocmd BufNewFile *.tex norm kk

