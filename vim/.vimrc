" Vim configuration does not contain plugins
" === General ===
set nocompatible       "取消兼容模式 
set number             "显示行号
set relativenumber     "相对行号
set history=700        "历史记录条数
set confirm            "在处理未保存或只读文件时，弹出确认提示
filetype indent on     "开启文件类型检查，并且载入与该类型对应的缩进规则

" Set to auto read when a file is changed from the outside
set autoread         "打开文件监视 如果在编辑过程中文件发生外部改变，就会发出提示。

" Colors and Fonts
syntax on              "语法高亮
set encoding=utf-8     "使用utf-8编码
set t_Co=256           "启用256色

" => Vim user interface
set ruler            "在状态栏显示光标位置
set mouse=i            "支持使用鼠标，开启插入模式的支持
set lazyredraw        " do not redraw while executing macros (much faster)
set scrolloff=10    "光标倒屏幕顶端/底端保留的行数，等于该函数则滚动

" Set backspace config
set backspace=eol,start,indent        "使退格键正常处理eol、indent、start

" No sound on errors
set noerrorbells    "出错时不要发出响声
set novisualbell    "出错时关闭视觉提示，通常是屏幕闪烁
set visualbell t_vb=  "关闭visual bell
au GuiEnter * set t_vb= "关闭beep

" Searching
set showmatch       "显示匹配符号，如成对的(),{}等
set matchtime=5     "1/10 second to show the matching paren
"set nohlsearch      "搜索字符串不要高亮显示（即敲回车以后）
set incsearch       "搜索输入字符串过程中高亮显示（即未敲回车）
set ignorecase      "搜索时忽略大小写
set smartcase       "智能大小写，需开启ignorecase


" === Text, tab and indent related === 
set ai              "autoindent（继承前一行的缩进方式，适用于多行注释）
set si              "smartindent
set expandtab       "由于tab键在不同的编辑器缩进不一致，该设置自动将tab转为空格
set tabstop=4       "tab键宽度
set shiftwidth=4    "统一缩进
set softtabstop=4   "统一缩进,tab转为多少个空格
set expandtab       "自动将tab转为空格
set smarttab        "行首段首自动使用tab


" === Files, backups and undo ===
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup     "不创建备份文件  默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（~）。
set nowb         "TODO功能现在暂且不知道
set noswapfile   "不创建交换文件  交换文件主要用于系统崩溃时恢复文件，文件名的开头是. 结尾是.swp。

"Persistent undo
try
    if MySys() == "windows"
      set undodir=C:\Windows\Temp
    else
      set undodir=~/.vim/undodir
    endif

    set undofile
catch
endtry

" === other ===
"命令模式下，底部操作指令按下tab键自动补全
set wildmenu
set wildmode=longest:list,full

" === 快捷键 ===
" set leader key
let mapleader=" "
let g:mapleader=" "
" 窗口分屏
nnoremap <leader>sv <C-w>v
nnoremap <leader>sh <C-w>s
nnoremap <leader>sc <C-w>c
" hjkl切换窗口
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-t> <C-W>t
nnoremap <leader>h <C-W>5<
nnoremap <leader>l <C-W>5>
nnoremap <leader>j <C-W>5-
nnoremap <leader>k <C-W>5+
" 取消搜索高亮
nnoremap <leader>nh :nohl<CR>
" 上下移动文本

" 禁用方向键
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
