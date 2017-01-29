"---------------------------------------------------------------------------
" USEFUL SHORTCUTS
"---------------------------------------------------------------------------
" set leader to ;
let mapleader=","
let g:mapleader=","

nnoremap ; :

" quick alias to leave vim
nmap <leader>w :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>

"replace the current word in all opened buffers
map <leader>r :call Replace()<CR>

" ;/ turn off search highlighting
nmap <leader>/ :set hls!<CR>
nnoremap <silent><leader>s :nohlsearch<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv

" Remap VIM 0 to first non-blank character
map 0 ^

nnoremap <silent> <F4> :set number!<CR>

map <leader>t :tabnew<CR>

nnoremap <leader>a :Ack!<space>

inoremap jj <ESC>

" change the working directory to that of the currently opened file
nnoremap <leader>cd :lcd %:p:h<CR>:pwd<CR>

" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-K> <C-W>k<C-W>_

nmap <F5> :!python %<cr>
