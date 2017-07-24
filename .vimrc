" bigCat专用VIM配置简化版
" 一般设定
" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
set nocompatible

" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" 语法高亮 
syntax on

" 设置配色
colorscheme solarized

" 设置字体
set guifont=Monaco:h14

" 开启行号显示
set number

"下面两行在进行编写代码时，在格式对起上很有用；
"第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；
"第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编
"写上很有用
set autoindent
set smartindent

"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
"个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
"次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
"时，别忘记回车
set incsearch

" 高亮当前行
set cursorline

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%Y-%m-%d\ %H:%M:%S\")}

" 总是显示状态行 
set laststatus=2

" 设置显示制表符的空格字符个数,改进tab缩进值，默认为8，现改为4
set tabstop=4

" 统一缩进为4，方便在开启了et后使用退格(backspace)键，每次退格将删除X个空格
set softtabstop=4

" 设定自动缩进为4个字符，程序中自动缩进所使用的空白长度
set shiftwidth=4

" 在c,c++,python文件中用空格代替制表符,ruby中用2个空格代替制表符
autocmd FileType c,cpp,python set shiftwidth=4 | set expandtab
autocmd FileType ruby set shiftwidth=2 | set expandtab

" 侦测文件类型 
filetype on

" 载入文件类型插件 
filetype plugin on

" 为特定文件类型载入相关缩进文件 
filetype indent on

" 括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 搜索忽略大小写
set ignorecase

" 设置当文件被改动时自动载入
set autoread

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 历史纪录
set history=1000

" 输入的命令显示出来，看的清楚些
set showcmd

" 解决backspace不能使用的问题
set backspace=indent,eol,start
set backspace=2

" 用空格代替tab
set expandtab

" 去掉输入错误提示声音
set noeb

" 共享剪贴板
set clipboard+=unnamed

" 顶部底部保持3行距离
set scrolloff=3