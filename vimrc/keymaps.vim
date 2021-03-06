"" 按键映射

" 空格键作为 leader 键
let mapleader=" "

" 退出 insert 模式返回到 normal 模式
inoremap jk <Esc>
inoremap jj <Esc>

" 跳到行首
nnoremap H ^
" 跳到行尾
nnoremap L $

" 保存
nnoremap <C-s> :w<CR>
" 打开终端
nnoremap <leader>h :term<CR>
" 删除选中部分
vnoremap <Backspace> x

" 插入模式移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 插入模式移动到行头
inoremap <C-b> <Esc>^i
" 插入模式移动到行尾
inoremap <C-e> <End>

" 光标在分屏间跳转
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffer 间跳转
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
