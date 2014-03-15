set t_Co=256
set wrap
syntax on
set number
set nocompatible
set background=dark
colorscheme molokai
set ul=300
set hlsearch
set wildmode=longest,list,full
set wildmenu

nnoremap <C-Left> :call search('\<\<Bar>\u', 'bW')<CR>
nnoremap <C-Right> :call search('\<\<Bar>\u', 'W')<CR>
inoremap <C-Left> <C-o>:call search('\<\<Bar>\u', 'bW')<CR>
inoremap <C-Right> <C-o>:call search('\<\<Bar>\u', 'W')<CR>

" resize current buffer by +/- 5 
nnoremap <S-left> :vertical resize -5<cr>
nnoremap <S-down> :resize +5<cr>
nnoremap <S-up> :resize -5<cr>
nnoremap <S-right> :vertical resize +5<cr>

" alias F4 to nerdtree and open it in desired directory
noremap  <f4> :NERDTree /www/<return>

" when opening file jump to directory of current working file using %%/
cabbr <expr> %% expand('%:p:h')

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
