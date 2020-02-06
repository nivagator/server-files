"### ~/.vimrc
set nocompatible
filetype indent plugin on
nnoremap Q gqip
nnoremap S :split<Return>
set path+=**
set wildmenu
set spelllang=en_us
nnoremap ,GPL :r ~/.vim/snippets/gpl.sh<Return>
set laststatus=2
"set ruler
set number
if has('mouse')
    set mouse=a
endif

colorscheme desert
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set smartindent
