" == vim-plug 加载插件 ===
call plug#begin(stdpath('config') . '/plugged')
" ui 相关
Plug 'itchyny/lightline.vim'        "底部状态栏插件
Plug 'joshdick/onedark.vim'         "one dark 主题

" 目录管理
Plug 'scrooloose/nerdtree'          "目录树插件
Plug 'ryanoasis/vim-devicons'       "目录文件图标
Plug 'Xuyuanp/nerdtree-git-plugin'  "目录树 git 标识插件
Plug 'jistr/vim-nerdtree-tabs'      "目录树 tabs 共用插件

" 文本输入
Plug 'Raimondi/delimitMate'         "括号、引号补全
Plug 'Shougo/deoplete.nvim'         "路径补全

" 语言特性
Plug 'neoclide/coc.nvim', {'branch': 'release'} "coc.nvim LSP support
call plug#end()

" === vim 界面配置 ===
set number                          "显示行号
set wrap linebreak                  "soft wrap
set hlsearch                        "高亮搜索
set laststatus=2                    "总是显示状态行
set ruler                           "显示右下角状态栏
set showmode                        "显示左下角状态栏，--INSERT--之类
set wildmenu                        "Tab补全命令
set lazyredraw                      "避免不必要重绘
set showmatch                       "高亮匹配括号 [{()}]
set cursorline                      "高亮当前行

filetype plugin indent on           "filetype on, filetype plugin on, filetype indent on

syntax on                           "语法高亮
colorscheme onedark                 "主题颜色
let g:onedark_terminal_italics=1    "主题启用斜体字体

" === vim 输入配置 ===
set expandtab                       "使用空格替换tab
set shiftwidth=2                    "默认缩进2个空格
set softtabstop=2                   "使用tab时，一个tab代表的空格数
set tabstop=2                       "tab代表2个空格
set autoindent                      "自动缩进
set encoding=utf-8                  "编码为utf8
set guifont=DroidSansMono_Nerd_Font:h12 "设置字体

" backspace键删除设置
" indent 删除自动缩进的值
" eol 删除上一行行末尾的回车，两行合并
" start 除了刚输入的，还删除原来的字符
set backspace=indent,eol,start

" === lightline 插件配置 ===
let g:lightline = {
\ 'colorscheme': 'one',
\ }

" === NERDTree 配置 ===
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "只有 NERDTree 时自动退出
let g:nerdtree_tabs_open_on_console_startup=1
map <F2> :NERDTreeTabsToggle<CR>       "开关NERDTree
