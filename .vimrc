syntax on

" This machine is windows, but I don't want \r\n sequence, just \n
set ff=unix
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
" Use cindent instead of smartindent
set cindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'shaneharper/vim-rtags'
Plug 'preservim/nerdtree'
call plug#end()

let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py"

colorscheme gruvbox
set background=dark

" Disable autocomment on new lines
set formatoptions-=cro

" Automatic parent,bracket,block,quote closure
:inoremap {<CR> {<CR>}<ESC>O
:inoremap (<CR> (<CR>)<ESC>O

" Auto-remove all trailing whitespace on save of C/C++/Python source files
autocmd FileType c,cpp,python autocmd BufWritePre <buffer> %s/\s\+$//e
