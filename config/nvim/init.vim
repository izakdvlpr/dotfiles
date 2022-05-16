call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
call plug#end()

syntax enable

set number
set relativenumber
set background=dark
set mouse=a

colorscheme nord

nnoremap <C-b> :NERDTreeToggle <cr>
nnoremap <C-t> :terminal <cr>
