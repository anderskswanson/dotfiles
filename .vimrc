" Anders K Swanson
" .vimrc configuration
" Vim 8.1

" plugs:
    " nerdtree
    " ctrlp
    " ale
    " whitespace

packloadall
silent! helptags ALL

" nerdtree config
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ale config
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

" ctrlp
nnoremap <C-f> :CtrlP+<CR>
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" whitespace config
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1

" pasterino
set pastetoggle=<F3>
inoremap <C-v> <F3><C-r>+<F3>

" tabs & indent
set ruler
set softtabstop=4     " spaces per tab character
set expandtab         " tabs are considered spaces
set autoindent        " turn on autoindentation
set cindent
set nostartofline
set shiftwidth=4

" no bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" ui
syntax on             " enable syntax processing
colorscheme badwolf
set number            " enable numbering
set showcmd           " cmd line on bottom bar
set wildmenu          " autocomplete cmd menu
set showmatch         " highlight matching characters

" searching
set incsearch         " search as chars are entered
set hlsearch          " highlight matches
set ignorecase
set smartcase

" movement
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
"highlight last inserted text
nnoremap gV '[v']

" smoother splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitright
