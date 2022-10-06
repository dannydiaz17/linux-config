set history=500
set autoread
au FocusGained,BufEnter * checktime
set so=7
set number
set ruler
set hlsearch
set incsearch
set showmatch
syntax enable
set noswapfile
set wrap
set si
set termguicolors
colorscheme murphy
command! Vb normal! <C-v>
nnoremap <C-b> <C-v>
