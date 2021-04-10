" syntax enable命令，启用语法高亮度。
syntax enable
"Vim命令开始执行(前缀)的标识
let mapleader=" "
"vim开启256色支持
set t_Co=256
"显示绝对行号
set number
"显示相对行号
set norelativenumber
"自动换行
set wrap
"高亮光标所在的行列
set cursorline
"在屏幕右下角显示未完成的指令输入
set showcmd
"使用'wildmenu'选项，将启用增强模式的命令行补全
set wildmenu
"出错发声就彻底被禁止
set vb t_vb=
"打开搜索高亮模式，若搜索找到匹配项就高亮显示所有匹配项。
set hlsearch
"打开增量搜索模式，Vim 会即时匹配你当前输入的内容
set incsearch
"搜索时忽略大小写
set ignorecase
"此选项的开启会让搜索模式更加聪明
set smartcase
"不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible
"使用 utf-8 编码
set encoding=utf-8
"配置是否支持鼠标
set mouse-=a
"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set expandtab
"按下 Tab 键时，Vim 显示的空格数。
set tabstop=2
"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set shiftwidth=2
"Tab 转为多少个空格
set softtabstop=2
"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块
set list
set listchars=tab:▸\ ,trail:▫
"垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=5
"设置行宽，即一行显示多少个字符
set textwidth=0
"indent缩进，eol行尾，start刚开始插入
set backspace=indent,eol,start
"启用文本自动折叠
set foldmethod=indent
"设置foldlevel为较高的设置，则文件总是以打开的折叠形式加载
set foldlevel=99
"是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2
"自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到，正在编辑的文件的目录。
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"进入粘贴模式
set paste
"indentexpr/noindentexpr：是/否使用indentexpr缩进方式
"set indentexpr

"去掉高亮
exec "nohlsearch"

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
let &t_ut=''
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map ; :

map si :set splitright<CR>:vsplit<CR>
map sn :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map se :set splitbelow<CR>:split<CR>

map <LEADER>i <C-w>l
map <LEADER>u <C-w>k
map <LEADER>n <C-w>h
map <LEADER>e <C-w>j

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tu :tabe<CR>
map tn :-tabnext<CR>
map ti :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

call plug#begin('~/.vim/plugged')

" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" Elegant vim theme with bright colors
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'preservim/nerdtree'

" A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" The undo history visualizer for VIM
Plug 'mbbill/undotree/'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet
Plug 'mattn/emmet-vim'

" color preview for vim
Plug 'gko/vim-coloresque'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

call plug#end()

" ===
" === snazzy
" ===
let g:SnazzyTransparent = 1
colorscheme snazzy

" ===
" === NERDTree
" ===
map tt :NERDTreeFocus<CR>

" ===
" === nerdtree-git-plugin
" ===
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>
let g:tagbar_sort = 0

" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>
