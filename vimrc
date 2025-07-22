call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'easymotion/vim-easymotion'
  Plug 'morhetz/gruvbox'
  Plug 'yianwillis/vimcdoc'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'
call plug#end()


"set LeaderKey
let mapleader = ";"


"设置nerdtree
nnoremap <Leader>g : NERDTreeToggle<CR>
nnoremap <Leader>f : NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif


"按下f启用easymotion，根据一个字符进行跳转
nnoremap ff <Plug>(easymotion-s)
"按下Leader+f启用easymotion，根据一个字符串进行跳转
noremap <Leader>f <Plug>(easymotion-sn)
"按下f启用easymotion，根据一个字符进行跳转
vnoremap ff <Plug>(easymotion-s)
"按下Leader+f启用easymotion，根据一个字符串进行跳转
vnoremap <Leader>f <Plug>(easymotion-sn)

"设置gruvbox主题
colorscheme gruvbox
set background=dark

"设置airline主题
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1





" ================================================================================================
" 	Basic settings
" ================================================================================================

"设置相对行号 和 当前行的绝对行号
set number relativenumber


"将 Vim 的寄存器与系统剪贴板共享，wsl系统需要运行sudo apt install vim-gtk3
if has("macunix")
  set clipboard=unnamed
elseif has("unix")
  set clipboard=unnamedplus
endif


"ctrl+j/k交换移动文本块
xnoremap <C-j> :m '>+1<cr>gv=gv
xnoremap <C-k> :m '<-2<cr>gv=gv

"insert模式控制光标移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


"将shift+j/k映射为向下/向上跳转5行
nnoremap J 5j
nnoremap K 5k


"按下fd回到normal模式
inoremap fd <Esc>
vnoremap fd <Esc>


"关闭系统提示音
set vb t_vb=

"设置在光标距离窗口顶部或底部一定行数时，开始滚动屏幕内容的行为
set scrolloff=10

"Vim 会在您输入搜索模式的过程中逐步匹配并高亮显示匹配的文本。
set incsearch
"--将搜索匹配的文本高亮显示
set hlsearch


"切换buffer
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

"删除当前buffer
nnoremap <Leader>bd :bdelete<CR>

"设置水平split的默认方向
set splitbelow
"设置垂直split的默认方向
set splitright












