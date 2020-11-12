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
<<<<<<< HEAD
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
=======
" set paste
set autoindent
>>>>>>> 807b6099d18250eb2a601d39b787b07f791f8817

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

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
" Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
" Plug 'vim-scripts/indentpython.vim'

" Markdown
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
" Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
" Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

call plug#end()

let g:SnazzyTransparent = 1
" colorscheme snazzy
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }


" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ===
" === You Complete ME
" ===
" nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" nnoremap g/ :YcmCompleter GetDoc<CR>
" nnoremap gt :YcmCompleter GetType<CR>
" nnoremap gr :YcmCompleter GoToReferences<CR>
" let g:ycm_autoclose_preview_window_after_completion=0
" let g:ycm_autoclose_preview_window_after_insertion=1
" let g:ycm_use_clangd = 0
" let g:ycm_python_interpreter_path = "/bin/python3"
" let g:ycm_python_binary_path = "/bin/python3"


" ===
" === ale
" ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']


" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>
let g:tagbar_sort = 0


" ===
" === MarkdownPreview
" ===
" let g:mkdp_auto_start = 0
" let g:mkdp_auto_close = 1
" let g:mkdp_refresh_slow = 0
" let g:mkdp_command_for_global = 0
" let g:mkdp_open_to_the_world = 0
" let g:mkdp_open_ip = ''
" let g:mkdp_browser = 'chromium'
" let g:mkdp_echo_preview_url = 0
" let g:mkdp_browserfunc = ''
" let g:mkdp_preview_options = {
"     \ 'mkit': {},
"     \ 'katex': {},
"     \ 'uml': {},
"     \ 'maid': {},
"     \ 'disable_sync_scroll': 0,
"     \ 'sync_scroll_type': 'middle',
"     \ 'hide_yaml_meta': 1
"     \ }
" let g:mkdp_markdown_css = ''
" let g:mkdp_highlight_css = ''
" let g:mkdp_port = ''
" let g:mkdp_page_title = '「${name}」'


" ===
" === vim-table-mode
" ===
" map <LEADER>tm :TableModeToggle<CR>

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ===
" === vim-indent-guide
" ===
" let g:indent_guides_guide_size = 1
" let g:indent_guides_start_level = 2
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_color_change_percent = 1
" silent! unmap <LEADER>ig
" autocmd WinEnter * silent! unmap <LEADER>ig


" ===
" === Goyo
" ===
" map <LEADER>gy :Goyo<CR>


" ===
" === vim-signiture
" ===
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>











