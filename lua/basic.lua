vim.cmd([[
"------------------------------------------------------------------------------
" General.
"-----------------------------------------------------------------------------

syntax on

set t_Co=256
set magic               " 支持正则表达式等
set hidden              " 允许在未保存的buffer中切换

set number              " 显示行号
set relativenumber      " 显示相对行号
" set cursorline          " 高亮鼠标行

set scrolloff=20        " 垂直移动时保持n行固定
set sidescroll=5        " 水平移动时保持n列固定

set tabstop=2          " 制表符等于几个空格
set shiftwidth=2        " 制表符缩进时应用几个空格
set expandtab           " 使用扩展制表符
set autoindent          " Auto indent
set si                  " Smart indent
set smarttab

set wrap                " 文本回滚
set fencs=utf-8,gb18030 " 打卡文件时优先选择编码格式
set ffs=unix,dos,mac    " 文件结束符
set autoread            " 自动读取文件的修改(其他软件的修改)
set nofoldenable        " 关闭折叠
set clipboard=unnamed   " 复制使用系统剪切板

set hlsearch            " 搜索时高亮
set incsearch           " 搜索输入高亮
set nowrapscan          " 关闭搜索回滚
set ignorecase          " 搜索时忽略大小写
set smartcase           " 搜索中含有大写则搜索大写

set showcmd             " 在状态栏中显示命令
set history=200         " 存储命令历史最大个数

set directory-=.        " swap文件不存储在当前文件夹

set list                " show trailing whitespace
set listchars=tab:▸\ ,trail:▫

" 关闭换行自动注释
au FileType * set fo-=c fo-=r fo-=o

" 退格键支持
set backspace=indent,eol,start

" 关闭gvim菜单
set guioptions-=m
set guioptions-=T

" 关闭错误时声音
set noerrorbells
set novisualbell
set t_vb=

" 补全命令设置
set wildmenu
set wildignore+=*.o,*.obj,*.pyc,*.aux,*.bbl,*.blg,.git,.svn,.hg

" 状态栏
set laststatus=2        " 总是显示状态栏

" 类缩进
set cino=g0

" 鼠标操作
if has('gui_running')
    set mouse=a
else
    set mouse=
endif

"------------------------------------------------------------------------------
" Background
"-----------------------------------------------------------------------------
set background=dark
colorscheme solarized

" tmux
set termguicolors
set t_ZH=^[[3m
set t_ZR=^[[23m

"------------------------------------------------------------------------------
" map
"-----------------------------------------------------------------------------
let g:mapleader = ","
let g:python3_host_prog = '/usr/bin/python3'
let g:python2_host_prog = '/usr/bin/python'

" 移动支持折行
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" 窗口切换
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" 复制粘贴
vnoremap p "_dp

" 保存
noremap <silent> <leader>w :w<cr>

" esc
inoremap jk <esc>

"------------------------------------------------------------------------------
" Other.
"-----------------------------------------------------------------------------
" 自动跳转到上一次打开的位置
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \ exe "normal! g'\"" |
            \ endif

" 鼠标处高亮样式
hi! LspReferenceRead gui=none guibg=#073642
hi! LspReferenceText gui=none guibg=#073642
hi! LspReferenceWrite gui=none guibg=#073642

"------------------------------------------------------------------------------
" Plugin.
"-----------------------------------------------------------------------------
" a.vim
nnoremap <Leader>s :IHS<CR>:A<CR>

" vim-cpp-modern
let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

]])
